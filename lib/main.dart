import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Adding configs for Android version, else don't add for ios
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyDGrgrUkIua5A6LMLUnbqlqcUYn6hL4YJk",
            appId: "1:1012437149503:android:a8ff52ed5cc23ae375d58a",
            messagingSenderId: "1012437149503",
            projectId: "shopfly-store",
          ),
        )
      : await Firebase.initializeApp();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
