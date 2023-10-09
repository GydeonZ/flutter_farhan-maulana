import 'package:flutter/material.dart';
import 'package:prioritas2/provider/image_provider.dart';
import 'package:prioritas2/screen/screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FetchSVGProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: HomeScreen(),
    );
  }
}
