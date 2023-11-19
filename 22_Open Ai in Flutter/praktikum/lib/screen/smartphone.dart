import 'package:flutter/material.dart';
import 'package:praktikum/screen/result.dart';
import 'package:praktikum/services/recommendatioin.dart';

List<String> storage = <String>[
  '32 GB',
  '64 GB',
  '128 GB',
  '256 GB',
  '512 GB',
];

List<String> cam = <String>[
  '1-5 mp',
  '6-12 mp',
  '13-20 mp',
  '21-40 mp',
  '40 up mp',
];

class SmartphoneScreen extends StatefulWidget {
  const SmartphoneScreen({super.key});

  @override
  State<SmartphoneScreen> createState() => _SmartphoneScreenState();
}

class _SmartphoneScreenState extends State<SmartphoneScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String storagevalue = storage.first;
  String camvalue = cam.first;
  bool isloading = false;

  void _getrecommendation() async {
    setState(() {
      isloading = true;
    });

    try {
      final result = await RecommendationService().getrecommendation(
          budget: _controller.text, camera: camvalue, storage: storagevalue);
      if (mounted) {
        setState(() {
          isloading = false;
        });
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return Result(gptResponseData: result);
          }),
        );
      }
    } catch (e) {
      const snackbar = SnackBar(
        content: Text('Failed to send request, try again'),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smartphone Recommendation')),
      body: Form(
        key: _formState,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _controller,
                decoration: const InputDecoration(
                  label: Text('Enter your budget'),
                  hintText: 'Masukkan Budget',
                ),
                validator: (value) {
                  //validasi tidak kosong
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan budget';
                  }
                  return null;
                },
              ),
              const Text('choose your camera requirement'),
              DropdownButton<String>(
                value: camvalue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                onChanged: (String? value) {
                  setState(() {
                    camvalue = value!;
                  });
                },
                items: cam.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const Text('choose your camera requirement'),
              DropdownButton<String>(
                value: storagevalue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                onChanged: (String? value) {
                  setState(() {
                    storagevalue = value!;
                  });
                },
                items: storage.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: isloading && _formState.currentState!.validate() != false
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: _getrecommendation,
                        child: const Center(
                          child: Text("Get recommendation"),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}