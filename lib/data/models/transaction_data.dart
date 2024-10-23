import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';


part 'transaction_data.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class TransactionData {
  @HiveField(0)
  String? transactionId;
  @HiveField(1)
  String? transactionDate;
  @HiveField(2)
  String? transactionAmount;
  @HiveField(3)
  String? transactionType;
  @HiveField(4)
  String? transactionCategory;
  @HiveField(5)
  String? transactionNote;

  TransactionData(
      {this.transactionId,
      this.transactionDate,
      this.transactionAmount,
      this.transactionType,
      this.transactionCategory,
      this.transactionNote});
       factory TransactionData.fromJson(Map<String,dynamic> json )=> _$TransactionDataFromJson(json);
}
