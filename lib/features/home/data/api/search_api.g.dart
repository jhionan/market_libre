// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _SearchApi implements SearchApi {
  _SearchApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Stream<SearchDto> search(query, limit, offset) async* {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': query,
      r'limit': limit,
      r'offset': offset
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SearchDto>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/sites/MLU/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SearchDto.fromJson(_result.data!);
    yield value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
