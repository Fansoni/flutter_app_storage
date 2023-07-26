import 'package:dio/dio.dart';
import 'package:flutter_app_storage/repositories/back4app/back4app_interceptor.dart';

class Back4AppCustomDio {
  final _dio = Dio();

  Dio get dio => _dio;

  Back4AppCustomDio() {
    _dio.options.headers["Content-Type"] = "application/json";
    _dio.options.baseUrl = "https://parseapi.back4app.com";
    _dio.interceptors.add(Back4AppInterceptor());
  }
}
