// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppUserAdapter extends TypeAdapter<AppUser> {
  @override
  final int typeId = 1;

  @override
  AppUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppUser(
      employeeId: fields[1] as String,
      mobileNumber: fields[2] as String,
      employeeName: fields[3] as String,
      branchName: fields[4] as dynamic,
      emailId: fields[5] as String,
      branchId: fields[6] as String,
      roleId: fields[7] as dynamic,
      roleName: fields[8] as dynamic,
      screenAccess: fields[9] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, AppUser obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.employeeId)
      ..writeByte(2)
      ..write(obj.mobileNumber)
      ..writeByte(3)
      ..write(obj.employeeName)
      ..writeByte(4)
      ..write(obj.branchName)
      ..writeByte(5)
      ..write(obj.emailId)
      ..writeByte(6)
      ..write(obj.branchId)
      ..writeByte(7)
      ..write(obj.roleId)
      ..writeByte(8)
      ..write(obj.roleName)
      ..writeByte(9)
      ..write(obj.screenAccess);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
