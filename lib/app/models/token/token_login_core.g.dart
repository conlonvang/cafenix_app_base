// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_login_core.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenLoginCoreHiveModelAdapter
    extends TypeAdapter<TokenLoginCoreHiveModel> {
  @override
  final int typeId = 0;

  @override
  TokenLoginCoreHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenLoginCoreHiveModel(
      accessToken: fields[0] as String,
      refreshToken: fields[1] as String,
      dateEx: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TokenLoginCoreHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.dateEx);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenLoginCoreHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
