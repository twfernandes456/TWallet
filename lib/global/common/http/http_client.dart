import 'package:dio/dio.dart';
import 'package:tw_wallet_ui/global/common/http/error_interceptor.dart';
import 'package:tw_wallet_ui/global/common/http/loading_interceptor.dart';
import 'package:tw_wallet_ui/global/store/env_store.dart';

class HttpClient {
  final Dio _dio = Dio()
    ..options = BaseOptions(
        baseUrl: globalEnv().apiGatewayBaseUrl,
        connectTimeout: globalEnv().apiGatewayConnectTimeout,
        responseType: ResponseType.json,
        validateStatus: (statusCode) {
          switch (statusCode) {
            case 400:
            case 404:
            case 405:
            case 500:
            case 502:
              return false;
            default:
              return true;
          }
        })
    ..interceptors.add(LoadingInterceptor())
    ..interceptors.add(ErrorInterceptor())
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  Future<Response> get(String url, {bool loading: true}) async {
    return _dio.get(url, options: Options(extra: {'withoutLoading': !loading}));
  }

  Future<Response> post(String url, Map<String, dynamic> data,
      {bool loading: true}) async {
    return _dio.post(url,
        options: Options(extra: {'withoutLoading': !loading}), data: data);
  }
}
