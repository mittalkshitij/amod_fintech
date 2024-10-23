// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionDataAdapter extends TypeAdapter<TransactionData> {
  @override
  final int typeId = 2;

  @override
  TransactionData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionData(
      transactionId: fields[0] as String?,
      transactionDate: fields[1] as String?,
      transactionAmount: fields[2] as String?,
      transactionType: fields[3] as String?,
      transactionCategory: fields[4] as String?,
      transactionNote: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.transactionId)
      ..writeByte(1)
      ..write(obj.transactionDate)
      ..writeByte(2)
      ..write(obj.transactionAmount)
      ..writeByte(3)
      ..write(obj.transactionType)
      ..writeByte(4)
      ..write(obj.transactionCategory)
      ..writeByte(5)
      ..write(obj.transactionNote);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    TransactionData(
      transactionId: json['transactionId'] as String?,
      transactionDate: json['transactionDate'] as String?,
      transactionAmount: json['transactionAmount'] as String?,
      transactionType: json['transactionType'] as String?,
      transactionCategory: json['transactionCategory'] as String?,
      transactionNote: json['transactionNote'] as String?,
    );

Map<String, dynamic> _$TransactionDataToJson(TransactionData instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'transactionDate': instance.transactionDate,
      'transactionAmount': instance.transactionAmount,
      'transactionType': instance.transactionType,
      'transactionCategory': instance.transactionCategory,
      'transactionNote': instance.transactionNote,
    };
