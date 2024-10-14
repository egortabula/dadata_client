import 'package:dadata_client/src/exceptions/exceptions.dart';

class ForbiddenException extends DadataApiException {
  ForbiddenException({super.query})
      : super(
          'Forbidden: Invalid API key, email not confirmed, '
          'or daily limit reached',
          statusCode: 403,
        );
}
