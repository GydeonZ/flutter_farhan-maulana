import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class FetchSVGProvider with ChangeNotifier {
  final Dio dio = Dio();
  String? image;
  TextEditingController nameController = TextEditingController();

  Future<void> fetchSVGImage() async {
    try {
      final response =
          await dio.get('https://api.dicebear.com/7.x/initials/svg?seed=${nameController.text}');
        image = response.data;
        notifyListeners(); // Memberi tahu listener bahwa data telah diperbarui
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
