/// Custom exception class to handle errors related to Dadata API calls.
///
/// This class can represent errors caused by:
/// - HTTP response status codes (e.g., 400, 401, etc.)
/// - Internal package errors (e.g., JSON parsing issues)
/// It provides helpful messages and prompts users to raise issues
/// for internal errors.
class DadataApiException implements Exception {
  /// Constructor for creating a [DadataApiException] with
  /// a specific error message.
  ///
  /// This is typically used for handling API errors where the [message]
  /// describes the issue and an optional [statusCode] provides the
  /// HTTP status code.
  ///
  /// The [query] parameter is optional and can be included to provide
  /// information about the API request that caused the error.
  ///
  /// Example:
  /// ```dart
  /// throw DadataApiException(
  ///   'Invalid API Key',
  ///   statusCode: 401,
  ///   query: 'query data'
  /// );
  /// ```
  DadataApiException(this.message, {this.statusCode, this.query});

  /// Constructor for handling internal package errors that are not related to
  /// the Dadata API but rather caused by issues in the package itself.
  ///
  /// This constructor provides a detailed error message asking users to raise
  /// an issue in the package's repository, making it easier to track bugs.
  ///
  /// The [query] parameter is optional and can be included
  /// to provide additional context about the request that caused
  /// the internal error.
  ///
  /// Example:
  /// ```dart
  /// throw DadataApiException.internalPackageError(
  ///   'Failed to parse JSON',
  ///   query: 'query data',
  /// );
  /// ```
  DadataApiException.internalPackageError(String cause, {this.query})
      : message = 'An internal error occurred in the Dadata package: $cause.\n'
            'Please raise an issue at: https://github.com/egortabula/dadata_client/issues',
        statusCode = null;

  /// The error message providing details about the exception.
  final String message;

  /// The HTTP status code associated with the API error, if available.
  final int? statusCode;

  /// The query that caused the error, if available.
  ///
  /// This is useful for debugging purposes, as it provides context about
  /// the request that led to the error.
  final String? query;

  /// Returns a string representation of the exception, including the [message],
  /// [statusCode], and [query] if available.
  ///
  /// This method helps to provide clear information about the error in logs
  /// or debugging output.
  @override
  String toString() => 'DadataApiException: $message'
      '${statusCode != null ? ' (status: $statusCode)' : ''}'
      '${query != null ? ' (query: $query)' : ''}';
}
