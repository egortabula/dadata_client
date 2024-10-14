import 'package:dadata_client/dadata_client.dart';
import 'package:dadata_client/src/apis/name_suggestions_api.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';

const _baseUrl =
    'http://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/fio';

void main() {
  // Define here your `system under test` class
  late NameSuggestionsApi sut;

  // Define other late variables here
  late Dio dio;
  late DioAdapter dioAdapter;

  // This method is used for `setUp` all needed variables before all tests
  setUp(() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://suggestions.dadata.ru',
        connectTimeout: const Duration(seconds: 5),
        method: 'POST',
      ),
    );
    dioAdapter = DioAdapter(
      dio: dio,
      printLogs: true,
    );
    sut = NameSuggestionsApi(
      apiKey: '8427b4a7d5c9b591791a4ccf4b13a402e31568ea',
      dio: dio,
    );
  });

  // Add your test or your test group here
  group('.getNameSuggestions', () {
    const path = '/suggestions/api/4_1/rs/suggest/fio';

    test(
      'Should return a list of name suggestions when the API '
      'responds successfully',
      () async {
        // Arrange: Set up the API to return a successful
        //response with a list of name suggestions.
        final headers = <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token ${sut.apiKey}',
        };
        final bodyResponseMap = {
          'suggestions': [
            {
              'value': 'Егор Табу',
              'data': {
                'name': 'Егор',
                'surname': 'Табула',
                'gender': 'MALE',
                'qc': '0',
                'patronymic': null,
              },
            },
            {
              'value': 'Егор Табу',
              'data': {
                'name': 'Егор',
                'surname': 'Табува',
                'gender': 'MALE',
                'qc': '0',
                'patronymic': null,
              },
            }
          ],
        };

        dioAdapter.onPost(
          path,
          headers: headers,
          data: {'query': 'Егор Табу'},
          (server) => server.reply(200, bodyResponseMap),
        );

        // Act: Call the method getNameSuggestions query.
        final suggestions = await sut.getNameSuggestions('Егор Табу');

        expect(suggestions, isList);
        expect(suggestions.length, equals(2));
        expect(suggestions[0], isA<NameSuggestionModel>());
        expect(suggestions[0].value, 'Егор Табу');
        expect(suggestions[0].data.gender, GenderEnum.male);
        expect(suggestions[0].data.name, 'Егор');
        expect(suggestions[0].data.surname, 'Табула');
        expect(suggestions[0].data.patronymic, isNull);
        expect(suggestions[0].data.qc, '0');
      },
    );

    test(
      'Should return an empty list when the API returns an empty result',
      () async {
        // Arrange
        final headers = <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token ${sut.apiKey}',
        };

        dioAdapter.onPost(
          path,
          headers: headers,
          data: {'query': ''},
          (server) => server.reply(
            200,
            {'suggestions': <dynamic>[]},
          ),
        );
        // Act
        final suggestions = await sut.getNameSuggestions('');

        // Assert
        expect(suggestions, isList);
        expect(suggestions, isEmpty);
      },
    );
    test(
      'should throw exception if the api did not contain "suggestions" field',
      () async {
        // Arrange
        final headers = <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token ${sut.apiKey}',
        };
        final bodyResponseMap = {
          'suggestion': [
            {
              'full_value': 'Егор Табу',
              'data': {
                'name': 'Егор',
                'surname': 'Табула',
                'gender': 'MALE',
                'qc': '0',
                'patronymic': null,
              },
            },
          ],
        };
        dioAdapter.onPost(
          path,
          headers: headers,
          data: {'query': 'Егор Табу'},
          (server) => server.reply(
            200,
            bodyResponseMap,
          ),
        );

        // Act

        // Assert
        await expectLater(
          sut.getNameSuggestions('Егор Табу'),
          throwsA(isA<DadataApiException>()),
          reason: 'The API response did not contain a valid "suggestions"',
        );
      },
    );
    test(
      'should throw a DadataApiException '
      'if dadata return response code other than 200 ',
      () async {
        // Arrange
        final headers = <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Token ${sut.apiKey}',
        };
        dioAdapter.onPost(
          path,
          headers: headers,
          data: {'query': 'Егор Табу'},
          (server) => server.throws(
            400,
            DioException(
              requestOptions: RequestOptions(
                path: path,
              ),
              response: Response(
                requestOptions: RequestOptions(),
                data: '400 error',
                statusCode: 400,
              ),
            ),
          ),
        );

        // Act & assert
        await expectLater(
          () async => sut.getNameSuggestions('Егор Табу'),
          throwsA(isA<BadRequestException>()),
        );
      },
    );
  });
}
