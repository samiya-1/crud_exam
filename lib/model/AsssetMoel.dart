import 'package:hive/hive.dart';
@HiveType(typeId: 0)
class AssetModel {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String type;
  @HiveField(3)
  String status;
  @HiveField(4)
  int serialno;
  AssetModel(
      {required this.name,
      required this.description,
      required this.type,
      required this.status,
      required this.serialno});
}
