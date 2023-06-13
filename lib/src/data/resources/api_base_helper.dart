import 'dart:convert';
import 'dart:io';
import 'package:florist_app/src/data/resources/preferences.dart';
import 'package:http/http.dart' as http;
import '../../utils/app_config.dart';
import '../../utils/app_exception.dart';

class ApiBaseHelper {
  final String _baseUrl = AppConfig.baseUrl;

  final _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };

  Future<dynamic> get(String url,
      {Map<String, String>? headers, Map<String, String>? queryParams}) async {
    try {
      final token = await Preferences.getToken();
      print(token);
      if (token.isNotEmpty) {
        _headers.addAll({'Authorization': 'Bearer $token'});
      }
      if (headers != null) {
        _headers.addAll(headers);
      }
      var uri = Uri.parse('$_baseUrl$url');
      if (queryParams != null) {
        uri = uri.replace(queryParameters: queryParams);
      }
      print(uri);
      final response = await http.get(uri, headers: _headers);
      print(response);
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> put(
      String url, {
        Map? body,
        Map<String, String>? headers,
        Map<String, String>? queryParams,
      }) async {
    try {
      final token = await Preferences.getToken();
      if (token.isNotEmpty) {
        _headers.addAll({'Authorization': 'Bearer $token'});
      }
      if (headers != null) {
        _headers.addAll(headers);
      }
      var uri = Uri.parse('$_baseUrl$url');
      if (queryParams != null) {
        uri = uri.replace(queryParameters: queryParams);
      }
      final response =
      await http.put(uri, body: json.encode(body), headers: _headers);
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> post(
      String url, {
        Map<String, dynamic>? params,
        Map<String, String>? headers,
        Map<String, String>? queryParams,
      }) async {
    try {
      final token = await Preferences.getToken();
      if (token.isNotEmpty) {
        _headers.addAll({'Authorization': 'Bearer $token'});
      }
      if (headers != null) {
        _headers.addAll(headers);
      }
      var uri = Uri.parse('$_baseUrl$url');
      if (queryParams != null) {
        uri = uri.replace(queryParameters: queryParams);
      }
      final response =
      await http.post(uri, headers: _headers, body: jsonEncode(params));
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> patch(
      String url, {
        Map<String, dynamic>? body,
        Map<String, String>? headers,
        Map<String, String>? queryParams,
      }) async {
    try {
      final token = await Preferences.getToken();
      if (token.isNotEmpty) {
        _headers.addAll({'Authorization': 'Bearer $token'});
      }
      if (headers != null) {
        _headers.addAll(headers);
      }
      var uri = Uri.parse('$_baseUrl$url');
      if (queryParams != null) {
        uri = uri.replace(queryParameters: queryParams);
      }
      final response =
      await http.patch(uri, body: json.encode(body), headers: _headers);
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> delete(
      String url, {
        Map<String, dynamic>? body,
        Map<String, String>? headers,
        Map<String, String>? queryParams,
      }) async {
    try {
      final token = await Preferences.getToken();
      if (token.isNotEmpty) {
        _headers.addAll({'Authorization': 'Bearer $token'});
      }
      if (headers != null) {
        _headers.addAll(headers);
      }
      var uri = Uri.parse('$_baseUrl$url');
      if (queryParams != null) {
        uri = uri.replace(queryParameters: queryParams);
      }
      final response =
      await http.delete(uri, body: json.encode(body), headers: headers);
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        final responseJson = json.decode(response.body.toString());
        return responseJson;
      case 422:
        final responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        final responseJson = json.decode(response.body.toString());
        return responseJson;
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        throw FetchDataException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
