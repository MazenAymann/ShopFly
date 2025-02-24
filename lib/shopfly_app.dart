import 'package:flutter/material.dart';
import 'package:shopfly/common/screens/no_network_screen.dart';
import 'package:shopfly/core/app/connectivity_controller.dart';
import 'package:shopfly/home_screen.dart';

class ShopflyApp extends StatelessWidget {
  const ShopflyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return const HomeScreen();
        }
        return const NoNetworkScreen();
      },
    );
  }
}
