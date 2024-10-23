import 'package:amod_fintech/data/models/transaction_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';


class HiveRepo {
  final boxName = 'expense';
  void registerAdapter() {
    Hive.registerAdapter(TransactionDataAdapter());
  }

  Future addExpenseToHive(TransactionData expense) async {
    final expenseBox = await Hive.openBox<TransactionData>(boxName);
    if (expenseBox.isOpen) {
      await expenseBox.put(expense.transactionId, expense);
      expenseBox.close();
    } else {
      throw Exception('Box is not open');
    }
  }

  Future deleteExpenseFromHive(String id) async {
    final expenseBox = await Hive.openBox<TransactionData>(boxName);
    if (expenseBox.isOpen) {
      await expenseBox.delete(id);
      expenseBox.close();
    } else {
      throw Exception('Box is not open');
    }
  }

  Future<List<TransactionData>> getAllExpenseFromHive() async {
    final expenseBox = await Hive.openBox<TransactionData>(boxName);
    if (expenseBox.isOpen) {
      return expenseBox.values.toList();
    } else {
      throw Exception('Box is not open');
    }
  }

  Future<TransactionData> getExpenseFromHive(String id) async {
    final expenseBox = await Hive.openBox<TransactionData>(boxName);
    if (expenseBox.isOpen) {
      return expenseBox.get(id) ?? TransactionData();
    } else {
      throw Exception('Box is not open');
    }
  }
}

final hiveRepoProvider = Provider<HiveRepo>((ref) => HiveRepo());
