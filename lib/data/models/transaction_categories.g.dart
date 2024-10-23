// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_categories.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionCategoriesAdapter extends TypeAdapter<TransactionCategories> {
  @override
  final int typeId = 3;

  @override
  TransactionCategories read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionCategories(
      salary: fields[0] as String?,
      rent: fields[1] as String?,
      grocery: fields[2] as String?,
      shopping: fields[3] as String?,
      fuel: fields[4] as String?,
      entertainment: fields[5] as String?,
      other: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionCategories obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.salary)
      ..writeByte(1)
      ..write(obj.rent)
      ..writeByte(2)
      ..write(obj.grocery)
      ..writeByte(3)
      ..write(obj.shopping)
      ..writeByte(4)
      ..write(obj.fuel)
      ..writeByte(5)
      ..write(obj.entertainment)
      ..writeByte(6)
      ..write(obj.other);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionCategoriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionCategories _$TransactionCategoriesFromJson(
        Map<String, dynamic> json) =>
    TransactionCategories(
      salary: json['salary'] as String?,
      rent: json['rent'] as String?,
      grocery: json['grocery'] as String?,
      shopping: json['shopping'] as String?,
      fuel: json['fuel'] as String?,
      entertainment: json['entertainment'] as String?,
      other: json['other'] as String?,
    );

Map<String, dynamic> _$TransactionCategoriesToJson(
        TransactionCategories instance) =>
    <String, dynamic>{
      'salary': instance.salary,
      'rent': instance.rent,
      'grocery': instance.grocery,
      'shopping': instance.shopping,
      'fuel': instance.fuel,
      'entertainment': instance.entertainment,
      'other': instance.other,
    };
