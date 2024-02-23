import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:voluntiersapp/core/http/abstract_http_client.dart';

class DioHttpClient extends AbstractHttpClient {
  // AbstractLocalAuthRepository localAuthRepository;
  final Dio dio;

  DioHttpClient({
    // required this.localAuthRepository,
    required this.dio,
  });

  Dio get _instance {
    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);

    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90));

    //  dio.interceptors.add(AuthDioInterceptor(localAuthRepository: localAuthRepository));

    //dio.interceptors.add(CurlLoggerDioInterceptor());

    return dio;
  }

  @override
  Future<HttpResponse<T>> post<T>(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    var dio = _instance;

    Response<T> response = await dio.post<T>(path, data: data);

    var httpResponse =
        HttpResponse<T>(data: response.data, statusCode: response.statusCode, statusMessage: response.statusMessage);

    return httpResponse;
  }

  @override
  Future<HttpResponse<T>> put<T>(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    var dio = _instance;

    Response<T> response = await dio.put<T>(path, data: data);

    var httpResponse =
        HttpResponse<T>(data: response.data, statusCode: response.statusCode, statusMessage: response.statusMessage);

    return httpResponse;
  }

  @override
  Future<HttpResponse<T>> get<T>(String path, {Map<String, dynamic>? queryParameters}) async {
    var dio = _instance;

    Response<T> response = await dio.get<T>(path);

    var httpResponse =
        HttpResponse<T>(data: response.data, statusCode: response.statusCode, statusMessage: response.statusMessage);

    return httpResponse;
  }

  @override
  Future<HttpResponse<T>> delete<T>(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    var dio = _instance;

    Response<T> response = await dio.delete<T>(path);

    var httpResponse =
        HttpResponse<T>(data: response.data, statusCode: response.statusCode, statusMessage: response.statusMessage);

    return httpResponse;
  }
}

// class AuthDioInterceptor extends Interceptor {
//   AbstractLocalAuthRepository localAuthRepository;

//   AuthDioInterceptor({required this.localAuthRepository});

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     var token = await localAuthRepository.readAuthToken();

//     final isAuthenticated = token != null;

//     if (isAuthenticated) {
//       options.headers["Authorization"] = 'Bearer $token';
//       options.headers["x-access-token"] = token;
//     }

//     return super.onRequest(options, handler);
//   }
// }
