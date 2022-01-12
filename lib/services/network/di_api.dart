import 'package:dio/dio.dart';

class ApiInstance {
  Dio? _dio;

  BaseOptions _baseOptions(String envUrl) {
    return BaseOptions(
        receiveDataWhenStatusError: true,
        connectTimeout: 600000, // 60 seconds
        receiveTimeout: 600000,
        baseUrl: envUrl, // 60 seconds
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
  }

  void initDioSetup(String envUrl) {
    _dio = new Dio(_baseOptions(envUrl));

    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          request.headers['Accept'] = "application/json";
          request.headers['Content-type'] = "application/json";
          return handler.next(request);
        },
        onError: (e, handler) async {},
      ),
    );
  }

  Dio getDio() {
    return _dio!;
  }
}
