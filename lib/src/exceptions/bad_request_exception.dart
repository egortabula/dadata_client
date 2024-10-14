import 'package:dadata_client/src/exceptions/exceptions.dart';

/// 400 - Bad Request: Invalid JSON or XML
class BadRequestException extends DadataApiException {
  /// Default constructor
  BadRequestException({super.query})
      : super(
          'Invalid request: The request contains invalid JSON or XML',
          statusCode: 400,
        );
}
