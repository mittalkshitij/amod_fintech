class RouteName {
  static const String splash = 'splash';
  static const String login = 'login';
  static const String dashboard = 'dashboard';
  static const String transaction = 'transaction';
   static const String addexpense = 'addexpense';
}

extension GoRoutePath on String {
  String path() => '/$this';
}
