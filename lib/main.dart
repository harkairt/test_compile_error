import 'package:flutter/material.dart';
import 'package:test_compile/tab_visibility_change_recognizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main'),
        ),
        body: Center(
          child: TabVisibilityChangeRecognizer(
            onVisibilityChange: (v) {
              debugPrint(v.toString());
            },
            child: const Text('👋'),
          ),
        ),
      ),
    );
  }
}
