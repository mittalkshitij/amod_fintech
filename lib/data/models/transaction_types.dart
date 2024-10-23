import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';


part 'transaction_types.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class TransactionTypes {
  @HiveField(0)
  String? income;
  @HiveField(1)
  String? expense;

  TransactionTypes({this.income, this.expense});
   factory TransactionTypes.fromJson(Map<String,dynamic> json )=> _$TransactionTypesFromJson(json);
}
