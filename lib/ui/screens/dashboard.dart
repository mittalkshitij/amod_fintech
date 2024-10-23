import 'dart:developer';

import 'package:amod_fintech/common/routes_name.dart';
import 'package:amod_fintech/data/models/transaction_data.dart';
import 'package:amod_fintech/repo/hive_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
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

      appBar: AppBar(title: const Text('Expenses'),
      ),
      body: myExpenseList.isNotEmpty
          ? ListView.builder(
              itemCount: myExpenseList.length,
              itemBuilder: (contex, index) {
                // return Text("data");
                return ListTile(
                
                  title: Text(myExpenseList[index].transactionCategory!),
                  subtitle: Text(myExpenseList[index].transactionAmount!),
                );
              })
          : const Center(
              child: Text(
                "You do not have expenses",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(RouteName.addexpense);
        },
        tooltip: 'ADD',
        child: const Icon(Icons.add),
      ),
    );
  }
}
