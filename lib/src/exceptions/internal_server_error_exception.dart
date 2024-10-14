import 'package:dadata_client/src/exceptions/exceptions.dart';

/// 5xx - Internal Server Error:
/// An internal error occurred in the Dadata service
class InternalServerErrorException extends DadataApiException {
  /// Default constructor
  InternalServerErrorException({super.query})
      : super(
          'Internal Server Error: An error occurred on the server side',
          statusCode: 500,
        );
}
