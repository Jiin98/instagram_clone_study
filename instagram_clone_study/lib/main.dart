import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone_study/src/app.dart';
import 'package:instagram_clone_study/src/binding/init_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitBinding(),
      home: const App(),
    );
  }
}
