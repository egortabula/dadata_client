import 'package:dadata_client/src/apis/name_suggestions_api.dart';
import 'package:dio/dio.dart';

/// DadataClient is a main entry point for interacting with Dadata APIs.
/// The user must provide an API key in order to use the available
/// suggestions services.
class DadataClient {
  /// Creates an instance of [DadataClient].
  ///
  /// Requires a valid [apiKey] to interact with Dadata's services.
  DadataClient({required this.apiKey}) {
    nameSuggestionsApi = NameSuggestionsApi(
      apiKey: apiKey,
      dio: dio,
    );
  }

  /// The API key required for authentication with Dadata's API.
  final String apiKey;

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://suggestions.dadata.ru',
      connectTimeout: const Duration(seconds: 5),
    ),
  );

  /// The API for fetching name suggestions.
  late final NameSuggestionsApi nameSuggestionsApi;
}
