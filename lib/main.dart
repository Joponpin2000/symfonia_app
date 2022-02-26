import 'package:flutter/material.dart';
import '/utils/app_theme.dart';
import '/views/dashboard/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symfonia',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Dashboard(),
    );
  }
}
