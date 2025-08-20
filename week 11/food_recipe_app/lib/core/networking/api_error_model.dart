import 'package:flutter/material.dart';


class ApiErrorModel {
  final String message;
  final int? statusCode;
  final IconData icon;

  ApiErrorModel({
    required this.message,
    this.statusCode,
    this.icon = Icons.error,
  });


}