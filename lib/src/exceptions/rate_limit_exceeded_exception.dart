import 'package:dadata_client/src/exceptions/exceptions.dart';

/// 429 - Too Many Requests: Too many requests per second
/// or too many new connections per minute
class RateLimitExceededException extends DadataApiException {
  /// Default constructor
  RateLimitExceededException({super.query})
      : super(
          'Too Many Requests: You are sending too many '
          'requests in a short period',
          statusCode: 429,
        );
}
