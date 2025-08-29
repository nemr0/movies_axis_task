import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../exceptions/failure.dart';
import '../../exceptions/server_failure.dart';
import '../../models/api_response.dart';
import '../apis.dart';
import '../network_service.dart';

@LazySingleton(as: NetworkService)
class DioNetworkService implements NetworkService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: APIs.baseUrl, // Replace with your API base URL
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ),
  )..interceptors.add(PrettyDioLogger(requestBody: true, responseBody: false));


  @override
  Future<Either<Failure, ApiResponse>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String,dynamic>? data,
  }) async {
    try {
      final res = await _dio.get(
        path,
        queryParameters: queryParameters,
        data: data,

      );
      if (res.statusCode == 200) {
        return Right(ApiResponse.fromDio(res));
      } else {
        return Left(
          ServerFailure(
            statusCode: res.statusCode,
            response: ApiResponse.fromDio(res),
          ),
        );
      }
    } catch (e, s) {
      if (e is DioException) {
        return Left(Failure.fromDioException(e));
      } else {
        return Left(ServerFailure(stackTrace: s));
      }
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> post({
    required String path,
    Map<String,dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      if (res.statusCode == 200) {
        return Right(ApiResponse.fromDio(res));
      } else {
        return Left(
          ServerFailure(
            statusCode: res.statusCode,
            response: ApiResponse.fromDio(res),
          ),
        );
      }
    } catch (e, s) {
      if (e is DioException) {
        return Left(Failure.fromDioException(e));
      } else {
        return Left(ServerFailure(stackTrace: s));
      }
    }
  }

}
