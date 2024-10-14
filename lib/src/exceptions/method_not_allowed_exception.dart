import 'package:dadata_client/src/exceptions/exceptions.dart';

/// 405 - Method Not Allowed
class MethodNotAllowedException extends DadataApiException {
  /// Default constructor
  MethodNotAllowedException({
    required this.allowedMethod,
    super.query,
  }) : super(
          'Method Not Allowed: The request method should be $allowedMethod',
          statusCode: 405,
        );

  /// Allowed method by the api
  final String? allowedMethod;
}
