import 'package:dadata_client/src/exceptions/exceptions.dart';

class UnauthorizedException extends DadataApiException {
  /// Default constructor
  UnauthorizedException({super.query})
      : super(
          'Unauthorized: Dadata API key is missing or invalid',
          statusCode: 401,
        );
}
