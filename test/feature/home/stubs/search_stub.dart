import 'dart:convert';
import 'dart:io';

import 'package:market_libre/features/home/data/models/search_dto.dart';

SearchDto searchResultStubed() {
  final Map<String, dynamic> jsonResponse =
      json.decode(File('test/feature/home/fixure/search_notebook.json').readAsStringSync());
  return SearchDto.fromJson(jsonResponse);
}
