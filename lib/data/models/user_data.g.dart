// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataAdapter extends TypeAdapter<UserData> {
  @override
  final int typeId = 0;

  @override
  UserData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserData(
      userId: fields[0] as String?,
      userName: fields[1] as String?,
      userEmail: fields[2] as String?,
      userPassword: fields[3] as String?,
      userTransactions: fields[4] as String?,
      userCurrency: fields[5] as String?,
      monthlyLimit: fields[6] as String?,
      userBalance: fields[7] as String?,
      userIncome: fields[8] as String?,
      userExpense: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.userEmail)
      ..writeByte(3)
      ..write(obj.userPassword)
      ..writeByte(4)
      ..write(obj.userTransactions)
      ..writeByte(5)
      ..write(obj.userCurrency)
      ..writeByte(6)
      ..write(obj.monthlyLimit)
      ..writeByte(7)
      ..write(obj.userBalance)
      ..writeByte(8)
      ..write(obj.userIncome)
      ..writeByte(9)
      ..write(obj.userExpense);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      userPassword: json['userPassword'] as String?,
      userTransactions: json['userTransactions'] as String?,
      userCurrency: json['userCurrency'] as String?,
      monthlyLimit: json['monthlyLimit'] as String?,
      userBalance: json['userBalance'] as String?,
      userIncome: json['userIncome'] as String?,
      userExpense: json['userExpense'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPassword': instance.userPassword,
      'userTransactions': instance.userTransactions,
      'userCurrency': instance.userCurrency,
      'monthlyLimit': instance.monthlyLimit,
      'userBalance': instance.userBalance,
      'userIncome': instance.userIncome,
      'userExpense': instance.userExpense,
    };
