import 'package:flutter/material.dart';
import 'package:to_do_app/BMI/features/auth/presentation/screens/bmi_result_screen.dart';

import 'BMI/features/home/bmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
