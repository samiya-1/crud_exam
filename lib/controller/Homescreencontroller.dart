import 'package:hive_flutter/hive_flutter.dart';

class HomeScreenController {
  static List assetlistkeys = [];
  static var mybox = Hive.box('assetlist');

  static void addAsset({
    required String name,
    required String description,
    required String type,
    required String serialno,
  }) {
    mybox.add({
      "name": name,
      "description": description,
      "type": type,
      "serialno": serialno,
    });
    assetlistkeys = mybox.keys.toList();
  }

  static getInitKeys() {
    assetlistkeys = mybox.keys.toList();
  }

  static deleteasset(var key) {
    mybox.delete(key);
    assetlistkeys = mybox.keys.toList();
  }

  static void editasset({
    required var currentKey,
    required String name,
    required String description,
    required String type,
    required String serialno,
  }) {
    mybox.put(
        currentKey,
        ({
          "name": name,
          "description": description,
          "type": type,
          "serialno": serialno,
        }));
  }
}
