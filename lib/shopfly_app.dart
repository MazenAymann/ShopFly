import 'package:flutter/material.dart';

class ShopflyApp extends StatelessWidget {
  const ShopflyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopfly App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Text('Shopfly App'),
        ),
      ),
    );
  }
}
