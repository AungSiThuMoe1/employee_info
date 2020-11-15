// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://54.254.62.118:8069/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<UserTokenModel> retrieveToken() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/api/auth/get_tokens/?username=aungsithumoe1@gmail.com&password=flutter',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'content-type': 'text/html'},
            extra: _extra,
            contentType: 'text/html',
            baseUrl: baseUrl),
        data: _data);
    final value = UserTokenModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<EmployeeResponseModel> retrieveEmployeeInformation(token) async {
    ArgumentError.checkNotNull(token, 'token');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('api/hr.employee/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{
              r'content-type': 'text/html',
              r'accept': 'application/json',
              r'Access-Token': token
            },
            extra: _extra,
            contentType: 'text/html',
            baseUrl: baseUrl),
        data: _data);
    final value = EmployeeResponseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<RenewTokenModel> refreshToken(refreshToken) async {
    ArgumentError.checkNotNull(refreshToken, 'refreshToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'refresh_token': refreshToken};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/api/auth/refresh_token/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{
              r'content-type': 'text/html',
              r'accept': 'application/json'
            },
            extra: _extra,
            contentType: 'text/html',
            baseUrl: baseUrl),
        data: _data);
    final value = RenewTokenModel.fromJson(_result.data);
    return value;
  }
}
