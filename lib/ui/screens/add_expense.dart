import 'package:amod_fintech/data/models/transaction_data.dart';
import 'package:amod_fintech/repo/hive_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddExpenseScreen extends ConsumerStatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  ConsumerState<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends ConsumerState<AddExpenseScreen> {
  TextEditingController transactionId = TextEditingController();
  TextEditingController transactionDate = TextEditingController();
  TextEditingController transactionAmount = TextEditingController();
  TextEditingController transactionType = TextEditingController();
  TextEditingController transactionCategory = TextEditingController();
  TextEditingController transactionNote = TextEditingController();

  @override
  Widget build(BuildContext context) {
 var channel = const MethodChannel('ToastMethod');
    showToast(String msg) {
      channel.invokeMethod('ShowToast',  msg);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Expenses'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: transactionId,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction id',
                        hintText: 'Enter Transaction id',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: transactionDate,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction Date',
                        hintText: 'Enter Transaction Date',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: transactionAmount,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction Amount',
                        hintText: 'Enter Transaction Amount',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: transactionType,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction Type',
                        hintText: 'Enter Transaction Type',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                  
                      controller: transactionCategory,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction Category',
                        hintText: 'Enter Transaction Category',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      controller: transactionNote,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Transaction Note',
                        hintText: 'Enter Transaction Note',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Add Expense'),
                    onPressed: () {
                      var expense = TransactionData(
                          transactionId: transactionId.text.toString(),
                          transactionDate: transactionDate.text.toString(),
                          transactionAmount: transactionAmount.text.toString(),
                          transactionCategory:
                              transactionCategory.text.toString(),
                          transactionType: transactionType.text.toString(),
                          transactionNote: transactionNote.text.toString());
                      ref.read(hiveRepoProvider).addExpenseToHive(expense);
                      showToast('Expense Added');
                    },
                  )
                ],
              )),
        ));
  }
}
