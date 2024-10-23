import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class UserData {
  @HiveField(0)
  String? userId;
  @HiveField(1)
  String? userName;
  @HiveField(2)
  String? userEmail;
  @HiveField(3)
  String? userPassword;
  @HiveField(4)
  String? userTransactions;
  @HiveField(5)
  String? userCurrency;
  @HiveField(6)
  String? monthlyLimit;
  @HiveField(7)
  String? userBalance;
  @HiveField(8)
  String? userIncome;
  @HiveField(9)
  String? userExpense;

  UserData({
    this.userId,
    this.userName,
    this.userEmail,
    this.userPassword,
    this.userTransactions,
    this.userCurrency,
    this.monthlyLimit,
    this.userBalance,
    this.userIncome,
    this.userExpense,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
