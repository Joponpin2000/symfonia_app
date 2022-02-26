import 'package:flutter/material.dart';
import 'package:symfonia_app/views/dashboard/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Symfonia',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
