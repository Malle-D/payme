import 'dart:convert';
import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:payme_clone/data/preference/my_preference.dart';

class Network {
  static Alice alice =
  Alice(showNotification: true, showInspectorOnShake: true);

  static Dio getDio() {
    final dio = Dio(BaseOptions(
        baseUrl: 'http://195.158.16.140/mobile-bank/v1/',
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        contentType: 'application/json',
        receiveDataWhenStatusError: true));
    dio.interceptors.add(alice.getDioInterceptor());

    dio.interceptors
        .add(InterceptorsWrapper(onError: (DioException error, handler) async {
      if (error.response?.statusCode == 401) {
        await _refreshToken();
        error.requestOptions.headers['Authorization'] = 'Bearer ${MyPreference.getToken()}';
        return handler.resolve(await _retry(error.requestOptions));
      }
    }));

    return dio;
  }

  static Future<void> _refreshToken() async {
    final response = await getDio().post('auth/update-token',
        data: jsonEncode({'refresh-token': MyPreference.getRefreshToken()}));
    if (response.statusCode == 200) {
      MyPreference.saveRefreshToken(response.data['access-token'].toString());
    }
  }

  static Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options =
    Options(method: requestOptions.method, headers: requestOptions.headers);
    return getDio().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }
}