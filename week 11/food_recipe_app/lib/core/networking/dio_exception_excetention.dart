import 'package:dio/dio.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';

extension DioExceptionExcetention on DioException {
  ApiErrorModel when({
    required ApiErrorModel Function() connectionTimeout,
    required ApiErrorModel Function() sendTimeout,
    required ApiErrorModel Function() receiveTimeout,
    required ApiErrorModel Function() badResponse,
    required ApiErrorModel Function() cancel,
    required ApiErrorModel Function() badCertificate,
    required ApiErrorModel Function() connectionError,
    required ApiErrorModel Function() unknown,
  }) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return connectionTimeout();
      case DioExceptionType.sendTimeout:
        return sendTimeout();
      case DioExceptionType.receiveTimeout:
        return receiveTimeout();
      case DioExceptionType.badResponse:
        return badResponse();
      case DioExceptionType.cancel:
        return cancel();
      case DioExceptionType.badCertificate:
        return badCertificate();
      case DioExceptionType.connectionError:
        return connectionError();
      case DioExceptionType.unknown:
        return unknown();
    }
  }
}
