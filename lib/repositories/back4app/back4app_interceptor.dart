import 'package:dio/dio.dart';

class Back4AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["X-Parse-Application-Id"] =
        "CUYmO1NqF7jDQMF3MjprPM7TG6K8S1h4n7T28wsL";
    options.headers["X-Parse-REST-API-Key"] =
        "nWpqPS4oVP63l8Vf8L3MCBgB24WfoahsshlaCDmj";
    return super.onRequest(options, handler);
  }
}
