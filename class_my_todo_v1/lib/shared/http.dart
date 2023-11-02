import 'package:class_my_todo_v1/shared/api.dart';
import 'package:dio/dio.dart';

// HTTP 통신 객체 설정

final dio = Dio(BaseOptions(
  baseUrl: baseUri,
  contentType: 'application/json; charset=utf-8'
));