import 'package:flutter/material.dart';
import 'package:praktikum/models/openai_model.dart';

class Result extends StatelessWidget {
  final GptData gptResponseData;
  const Result({super.key, required this.gptResponseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smartphone Recommendations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              "Recommendations",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              gptResponseData.choices[0].text,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}