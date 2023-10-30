

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Un sinmple boolean
final isDarkModeProvider = StateProvider((ref) => false);

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//una simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, Apptheme>(
  (ref) => ThemeNotifier(),
);

//controller o Notifier
class ThemeNotifier extends StateNotifier<Apptheme> {

  //STATE = estado = new AppTheme();
  ThemeNotifier() : super(Apptheme());

  void toggLeDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
  
}