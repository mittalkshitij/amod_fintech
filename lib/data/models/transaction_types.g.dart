// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionTypesAdapter extends TypeAdapter<TransactionTypes> {
  @override
  final int typeId = 1;

  @override
  TransactionTypes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionTypes(
      income: fields[0] as String?,
      expense: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionTypes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.income)
      ..writeByte(1)
      ..write(obj.expense);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionTypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionTypes _$TransactionTypesFromJson(Map<String, dynamic> json) =>
    TransactionTypes(
      income: json['income'] as String?,
      expense: json['expense'] as String?,
    );

Map<String, dynamic> _$TransactionTypesToJson(TransactionTypes instance) =>
    <String, dynamic>{
      'income': instance.income,
      'expense': instance.expense,
    };
