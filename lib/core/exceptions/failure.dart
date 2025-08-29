import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../models/api_response.dart';
import 'network_failure.dart';
import 'server_failure.dart';

class Failure extends Equatable {
  final StackTrace? stackTrace;

  const Failure(this.stackTrace);
/// Factory constructor to create a Failure from a DioException.
  factory Failure.fromDioException(DioException e) {
    final bool isNetworkError = e.error is SocketException ||
        e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout;
    if (isNetworkError) {
      return NetworkFailure(stackTrace: e.stackTrace);
    } else {
      return ServerFailure(
        statusCode: e.response?.statusCode,
        response: ApiResponse.fromDio(e.response),
        stackTrace: e.stackTrace,
      );
    }
  }

  @override
  List<Object?> get props => [
        stackTrace,
      ];
}
