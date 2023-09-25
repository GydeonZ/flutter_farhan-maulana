import 'package:flutter/material.dart';
import 'package:praktikum/Screen/picture_screen.dart';
import 'package:praktikum/material_page.dart';

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
