// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class datamodelAdapter extends TypeAdapter<datamodel> {
  @override
  final int typeId = 0;

  @override
  datamodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return datamodel(
      habitName: fields[0] as String,
      habitCompleted: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, datamodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.habitName)
      ..writeByte(1)
      ..write(obj.habitCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is datamodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
