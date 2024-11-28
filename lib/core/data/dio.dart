import 'package:dio/dio.dart';


final dio = _initDio();

Dio _initDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.24.148:8080/',
    ),
  );


  return dio;
}
