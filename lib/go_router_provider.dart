import 'package:amod_fintech/common/routes_name.dart';
import 'package:amod_fintech/ui/screens/add_expense.dart';
import 'package:amod_fintech/ui/screens/dashboard.dart';
import 'package:amod_fintech/ui/screens/error_screen.dart';
import 'package:amod_fintech/ui/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();


final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteName.dashboard.path(),
    routes: [
      GoRoute(
          path: RouteName.dashboard.path(),
          name: RouteName.dashboard,
          builder: (context, state) {
            return const DashboardScreen();
          }),
              GoRoute(
          path: RouteName.transaction.path(),
          name: RouteName.transaction,
          builder: (context, state) {
            return const TransactionScreen();
          }),
          GoRoute(
          path: RouteName.addexpense.path(),
          name: RouteName.addexpense,
          builder: (context, state) {
            return const AddExpenseScreen();
          }),
        
    ],
    errorBuilder: (context, state) {
      return ErrorScreen(error: state.error.toString());
    },
  );
});
