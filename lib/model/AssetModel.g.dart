// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AssetModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AssetModelAdapter extends TypeAdapter<AssetModel> {
  @override
  final int typeId = 1;

  @override
  AssetModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AssetModel(
      name: fields[0] as String,
      description: fields[1] as String,
      type: fields[2] as String,
      status: fields[3] as String,
      serialno: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AssetModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.serialno);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssetModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
