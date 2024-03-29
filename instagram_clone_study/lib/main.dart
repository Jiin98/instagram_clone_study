import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone_study/src/app.dart';
import 'package:instagram_clone_study/src/binding/init_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      initialBinding: InitBinding(),
      home: const App(),
    );
  }
}
