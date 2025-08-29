import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/router/navigator_key.dart';

import '../../exceptions/failure.dart';
import '../../exceptions/server_failure.dart';
import '../../models/api_response.dart';
import '../apis.dart';
import '../network_service.dart';

@LazySingleton(as: NetworkService)
class DioNetworkService implements NetworkService {
  DioNetworkService() {
    _init();
  }

  late final Dio _dio;
  late final Alice _alice;
  @override
  Future<Either<Failure, ApiResponse>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
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
    Map<String, dynamic>? data,
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

  /// Initializes the Dio instance with configurations and interceptors.
  void _init() {
     _alice = Alice(
      configuration: AliceConfiguration(navigatorKey: navigatorKey, showNotification: false),
    );
    final aliceDioAdapter = AliceDioAdapter();
    _alice.addAdapter(aliceDioAdapter);
    _dio =
        Dio(
            BaseOptions(
              baseUrl: APIs.baseUrl, // Replace with your API base URL
              connectTimeout: const Duration(seconds: 30),
              receiveTimeout: const Duration(seconds: 30),
              sendTimeout: const Duration(seconds: 30),
            ),
          )
          ..interceptors.addAll([
            aliceDioAdapter,
          ]);
  }

  @override
  void showInspector() {
    _alice.showInspector();
  }
}
