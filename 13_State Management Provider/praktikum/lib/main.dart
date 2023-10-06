import 'package:flutter/material.dart';
import 'package:praktikum/Screen/picture_screen.dart';
import 'package:praktikum/material_page.dart';
import 'package:praktikum/provider/contact_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contact': (context) => const HomePage(),
        '/picture': (context) => const PictureScreen(),
      },
    );
  }
}
