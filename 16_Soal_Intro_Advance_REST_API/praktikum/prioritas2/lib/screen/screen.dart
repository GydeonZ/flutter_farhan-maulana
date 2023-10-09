import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prioritas2/provider/image_provider.dart';
import 'package:provider/provider.dart';
// import 'package:prioritas2/provider/fetch_svg_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FetchSVGProvider svgProvider;

  @override
  void initState() {
    super.initState();
    svgProvider = Provider.of<FetchSVGProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SVG Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Consumer<FetchSVGProvider>(
                  builder: (context, provider, _) {
                    if (svgProvider.image != null) {
                      return SvgPicture.string(svgProvider.image!);
                    } else {
                      return const Icon(Icons.flutter_dash_rounded);
                    }
                  },
                ),
              ),
              TextFormField(
                controller: svgProvider.nameController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Name',
                  labelStyle: Theme.of(context).textTheme.labelMedium,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF4A5157),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  svgProvider.fetchSVGImage();
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
