import 'package:dadata_client/src/exceptions/exceptions.dart';

/// 413 - Payload Too Large: Request body too large or too many conditions
class PayloadTooLargeException extends DadataApiException {
  /// Default constructor
  PayloadTooLargeException({super.query})
      : super(
          'Payload Too Large: The request body is too large '
          'or there are too many conditions',
          statusCode: 413,
        );
}
