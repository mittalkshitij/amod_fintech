import 'dart:developer';

import 'package:amod_fintech/data/models/transaction_data.dart';
import 'package:amod_fintech/repo/hive_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionScreen extends ConsumerStatefulWidget {
  const TransactionScreen({super.key});

  @override
  ConsumerState<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends ConsumerState<TransactionScreen> {
  List<TransactionData> myExpenseList = [];

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await ref
          .read(hiveRepoProvider)
          .getAllExpenseFromHive()
          .then((expenseList) {
        log(expenseList.toString());
        setState(() {
          myExpenseList = expenseList;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses"),
        centerTitle: true,
      ),
      body: myExpenseList.isNotEmpty
          ? ListView.builder(
              itemCount: myExpenseList.length,
              itemBuilder: (contex, index) {
                // return Text("data");
                return ListTile(
                 
                  title: Text(myExpenseList[index].transactionCategory!),
                  subtitle: Text(myExpenseList[index].transactionAmount!),
                  trailing: IconButton(
                      onPressed: () {
                        ref
                            .read(hiveRepoProvider)
                            .deleteExpenseFromHive(myExpenseList[index].transactionId!);
                        myExpenseList.removeWhere((element) =>
                            myExpenseList[index].transactionId == element.transactionId!);
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete)),
                );
              })
          : const Center(
              child: Text(
                "You do not have expenses",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
        
    );
  }
}