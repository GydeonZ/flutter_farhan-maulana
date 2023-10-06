import 'package:flutter/material.dart';
import 'package:praktikum/Screen/drawer.dart';

class BackGroundScreenColor extends StatelessWidget {
  const BackGroundScreenColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black);
  }
}

class EmptyScreen extends StatelessWidget {
  final String? selectedImagePath;

  const EmptyScreen({Key? key, this.selectedImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      drawer: const MyDrawer(),
      body: Stack(
        children: [
          const BackGroundScreenColor(),
          const Align(
            alignment: Alignment.topLeft, // Adjust the alignment as needed
            child: Text(
              'halaman baru',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
                decorationThickness: 3,
                color: Colors.red,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          if (selectedImagePath != null)
          Center(
            child: Image.asset(
              selectedImagePath!,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
