import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: Apptheme(selectedColor: 5).getTheme(),
      // routes: {
      //   '/buttons': (context) => ButtonsScreen(),
      //   '/about': (context) => CardsScreen(),
      // }
      routerConfig: appRouter,
      
    );
  }
}


