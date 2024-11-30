import 'package:dio/dio.dart';


final dio = _initDio();

Dio _initDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.0.101:8080/',
    ),
  );


  return dio;
}
