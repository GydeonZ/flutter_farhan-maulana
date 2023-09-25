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
