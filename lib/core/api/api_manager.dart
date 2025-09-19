import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/utils/constants_manager.dart';

class ApiManager {
  late Dio dio;

  ApiManager(){
    dio=Dio();
  }

  Future<Response> getData({
    required String endPoints,
    Map<String, dynamic>? header,
    Map<String, dynamic>? param,
  }) async {
    return dio.get(
      AppConstants.baseUrl + endPoints,
      options: Options(headers: header),
      queryParameters: param,
    );
  }

  Future<Response> postData({
    required String endPoints,
    Map<String, dynamic>? header,
    Map<String, dynamic>? body,
  }) async {
    return dio.post(
      AppConstants.baseUrl + endPoints,
      options: Options(headers: header),
      data: body,
    );
  }
}
