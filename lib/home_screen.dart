import 'package:flutter/material.dart';
import 'package:shopfly/core/app/connectivity_controller.dart';
import 'package:shopfly/core/app/env.variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      builder: (context, widget) {
        return Scaffold(
          body: Builder(
            builder: (context) {
              ConnectivityController.instance.init();
              return widget!;
            },
          ),
        );
      },
      home: const Scaffold(
        body: Center(
          child: Text('Shopfly App'),
        ),
      ),
    );
  }
}
