import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
      home: const HomePage(title: 'Hallo Alterra'),
    );
  }
}