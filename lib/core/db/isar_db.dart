import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/home/data/models/search_dto.dart';
import '../../features/home/domain/models/search_entity.dart';

class IsarDb {
  IsarDb._();
  late final Isar _isar;
  static IsarDb? _instance;

  static Future<void> init() async {
    if (_instance == null) {
      _instance = IsarDb._();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      _instance!._isar = await Isar.open(
        schemas: [
          SearchResultEntitySchema,
          ResultAttributeSchema,
        ],
        directory: '$appDocPath/db',
      );
    }
    return;
  }

  static IsarDb get instance => _instance!;

  Future<SearchResultEntity> saveResult(SearchResultEntity result) async {
    return await _isar.writeTxn<SearchResultEntity>((isar) async {
      await isar.searchResultEntitys.put(result, replaceOnConflict: true);
      return result;
    });
  }

  Future<List<SearchResultEntity>> getResult() async {
    return await _isar.searchResultEntitys.where()

    .findAll();
  }

  Future<bool> delete(int id) async {
    return _isar.writeTxn<bool>(
        (isar) => isar.searchResultEntitys.delete(id));
    
  }
}
