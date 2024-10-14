import 'package:dadata_client/dadata_client.dart';
import 'package:dadata_client/src/utils/exception_helper.dart';
import 'package:dio/dio.dart';

/// The base URL for Dadata's name suggestions API.
const _baseUrl =
    'http://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/fio';

/// NameSuggestionsApi handles fetching name suggestions from Dadata's API.
class NameSuggestionsApi {
  /// Creates an instance of [NameSuggestionsApi] with the required [apiKey].
  NameSuggestionsApi({
    required this.apiKey,
    required Dio dio,
  }) : _dio = dio;

  /// The API key required for authenticating requests.
  final String apiKey;

  final Dio _dio;

  /// Fetches name suggestions based on the provided query.
  ///
  /// Returns a list of [NameSuggestionModel]s, or throws an error
  /// if the request fails.
  Future<List<NameSuggestionModel>> getNameSuggestions(String query) async {
    const path = '/suggestions/api/4_1/rs/suggest/fio';

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        path,
        data: {'query': query},
        options: Options(
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Token $apiKey',
          },
        ),
      );

      final suggestionsRaw = response.data?['suggestions'] as List<dynamic>?;

      if (suggestionsRaw == null) {
        throw DadataApiException.internalPackageError(
          'The API response did not contain a valid "suggestions" '
          'field or the data format is incorrect.',
          query: query,
        );
      }

      return suggestionsRaw
          .map(
            (e) => NameSuggestionModelMapper.fromMap(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    } on DioException catch (e) {
      throw ExceptionHelper.createCustomException(e.response!.statusCode);
    }
  }
}
