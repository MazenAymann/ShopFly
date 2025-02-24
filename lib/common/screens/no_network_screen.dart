import 'package:flutter/material.dart';
import 'package:shopfly/core/app/env.variables.dart';
import 'package:shopfly/style/images/app_images.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.noNetwork,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
