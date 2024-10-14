import 'package:dadata_client/src/exceptions/exceptions.dart';

class ExceptionHelper {
  static DadataApiException createCustomException(
    int? statusCode, {
    String? query,
    String? allowedMethod,
  }) {
    switch (statusCode) {
      case 401:
        return UnauthorizedException(query: query);
      case 429:
        return RateLimitExceededException(query: query);
      case 400:
        return BadRequestException(query: query);
      case 403:
        return ForbiddenException(query: query);
      case 405:
        return MethodNotAllowedException(
          query: query,
          allowedMethod: allowedMethod,
        );
      case 413:
        return PayloadTooLargeException(query: query);
      case 500:
        return InternalServerErrorException(query: query);
      default:
        return DadataApiException(
          'Unknown error',
          statusCode: statusCode,
          query: query,
        );
    }
  }
}
