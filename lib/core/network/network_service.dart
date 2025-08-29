import 'package:dartz/dartz.dart';
import 'package:movies/core/service_locator/service_locator.dart';

import '../exceptions/failure.dart';
import '../models/api_response.dart';

/// Abstract contract for making network requests.
///
/// Implementations should provide logic for HTTP GET requests and request cancellation.
abstract class NetworkService{
  static NetworkService get instance => ServiceLocator.get<NetworkService>();
  /// Sends an HTTP GET request to the specified [path].
  ///
  /// [queryParameters]: Optional query parameters for the request.
  /// [cancelKey]: Optional key to identify and cancel this request.
  ///
  /// Returns either a [Failure] or an [ApiResponse].
  Future<Either<Failure,ApiResponse>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String,dynamic>? data,
    // String? cancelKey,
  });
  /// Sends an HTTP POST request to the specified [path].
  ///
  /// [queryParameters]: Optional query parameters for the request.
  /// [cancelKey]: Optional key to identify and cancel this request.
  ///
  /// Returns either a [Failure] or an [ApiResponse].
  Future<Either<Failure,ApiResponse>> post({
    required String path,
    Map<String,dynamic>? data,
    Map<String, dynamic>? queryParameters,
    // String? cancelKey,
  });

  void showInspector();
  // /// Cancels an ongoing request identified by [key].
  // void cancelRequest(String key);
}