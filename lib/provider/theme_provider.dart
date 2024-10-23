import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends StateNotifier<bool> {
  ThemeProvider() : super(false);

  Future toogleTheme() async {
    final SharedPreferencesAsync sharedPref = SharedPreferencesAsync();
    state = !state;
    await sharedPref.setBool('theme', state);
  }

  Future getSavedTheme() async {
    final SharedPreferencesAsync sharedPref = SharedPreferencesAsync();
    final bool? savedTheme = await sharedPref.getBool('theme');
    state = savedTheme ?? false;
  }
}

final themeProvider =
    StateNotifierProvider<ThemeProvider, bool>((ref) => ThemeProvider());
