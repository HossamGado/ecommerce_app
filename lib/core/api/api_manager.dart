import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/utils/constants_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
@singleton
class ApiManager {
  late Dio dio;

  ApiManager(){
    dio=Dio();
    
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: false,
      compact: true,
      error: true,

    ));
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
