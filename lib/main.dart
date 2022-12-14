import 'package:flutter/material.dart';
import 'package:fractal_flutter/native.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const AppBody(),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Generate Fractal ',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 120),
        TextButton(
          onPressed: () => api.saveFractal(),
          child: Text('Save Fractal'),
        ),
      ],
    );
  }
}
