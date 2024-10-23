import 'package:amod_fintech/go_router_provider.dart';
import 'package:amod_fintech/repo/hive_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  HiveRepo().registerAdapter();

  runApp(const ProviderScope(child: MyFintech()));
}

class MyFintech extends ConsumerWidget {
  const MyFintech({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouterConfig = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouterConfig,
    );
  }
}
