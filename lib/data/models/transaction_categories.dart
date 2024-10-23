import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_categories.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class TransactionCategories {
  @HiveField(0)
  String? salary;
  @HiveField(1)
  String? rent;
  @HiveField(2)
  String? grocery;
  @HiveField(3)
  String? shopping;
  @HiveField(4)
  String? fuel;
  @HiveField(5)
  String? entertainment;
  @HiveField(6)
  String? other;

  TransactionCategories(
      {this.salary,
      this.rent,
      this.grocery,
      this.shopping,
      this.fuel,
      this.entertainment,
      this.other});
 factory TransactionCategories.fromJson(Map<String,dynamic> json )=> _$TransactionCategoriesFromJson(json);
      
}

