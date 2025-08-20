import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/networking/api_error_factory.dart';
import 'package:food_recipe_app/core/networking/api_error_model.dart';
import 'package:food_recipe_app/core/networking/dio_exception_excetention.dart';
import 'package:food_recipe_app/core/networking/local_status_code.dart';

class ApiErrorHandler {
  static ApiErrorModel handleError(dynamic error) {
    if (error is DioException) {
      error.when(
        connectionTimeout:
            () => ApiErrorModel(
              icon: Icons.wifi_off,
              message: 'Connection timeout. Please try again later.',
              statusCode: LocalStatusCode.connectionTimeout,
            ),
        sendTimeout:
            () => ApiErrorModel(
              icon: Icons.send,
              message: 'Send timeout. Please try again later.',
              statusCode: LocalStatusCode.sendTimeout,
            ),
        receiveTimeout:
            () => ApiErrorModel(
              icon: Icons.receipt,
              message: 'Receive timeout. Please try again later.',
              statusCode: LocalStatusCode.receiveTimeout,
            ),
        badResponse:
            () => ApiErrorModel(
              icon: Icons.error_outline,
              message: 'Bad response from server.',
              statusCode:
                  error.response?.statusCode ?? LocalStatusCode.badResponse,
            ),
        cancel:
            () => ApiErrorModel(
              icon: Icons.cancel,
              message: 'Request cancelled.',
              statusCode: LocalStatusCode.cancel,
            ),
        badCertificate:
            () => ApiErrorModel(
              icon: Icons.security,
              message: 'Invalid SSL certificate.',
              statusCode:
                  error.response?.statusCode ?? LocalStatusCode.badCertificate,
            ),
        connectionError:
            () => ApiErrorModel(
              icon: Icons.cloud_off,
              message: 'Connection failed. Please check your internet.',
              statusCode: LocalStatusCode.connectionError,
            ),
        unknown:
            () => ApiErrorModel(
              icon: Icons.error,
              message: 'An unexpected error occurred.',
              statusCode: LocalStatusCode.unknown,
            ),
      );
    }
    return ApiErrorFactory.defaultError();
  }
}
