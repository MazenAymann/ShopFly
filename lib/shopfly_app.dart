import 'package:flutter/material.dart';
import 'package:shopfly/core/app/env.variables.dart';

class ShopflyApp extends StatelessWidget {
  const ShopflyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopfly App',
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Shopfly App'),
        ),
      ),
    );
  }
}
