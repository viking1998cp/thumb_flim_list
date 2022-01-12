import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:base_flutter_framework/utils/shared.dart';

import 'package:dio/dio.dart';

class ServiceCommon {
  Future<Response?> getHttp(
      {Map<String, dynamic>? param,
      required String api,
      required Dio dio}) async {
    Response response = await dio.get(
      api,
      queryParameters: param,
    );
    return response;
  }

  Future<Response?> postHttp(
      {Map<String, dynamic>? param,
      required String api,
      required Dio dio}) async {
    Response response = await dio.post(api, data: param);
    print(response);
    return response;
  }

  Future<Response?> put(
      {Map<String, dynamic>? param,
      required String api,
      required Dio dio}) async {
    Response response = await dio.put(api, data: param);
    return response;
  }

  Future<Response?> patch(
      {Map<String, dynamic>? param,
      required String api,
      required String host,
      required Dio dio}) async {
    Response response = await dio.patch(api,
        // queryParameters: param,
        data: param);

    return response;
  }

  Future<Response?> deleteHttp(
      {Map<String, dynamic>? param,
      required String api,
      required Dio dio}) async {
    Response response = await dio.delete(api, data: param);
    return response;
  }

  Future<Response?> patchHttp(
      {required Map<String, dynamic> param,
      required String host,
      required String api,
      required Dio dio}) async {
    Response response = await dio.patch(api, data: param);
    return response;
  }
}
