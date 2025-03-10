import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopfly/core/app/env.variables.dart';
import 'package:shopfly/shopfly_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Set App in Dev Mode
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);

  //Adding configs for Android version, else don't add for ios
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyDGrgrUkIua5A6LMLUnbqlqcUYn6hL4YJk',
            appId: '1:1012437149503:android:a8ff52ed5cc23ae375d58a',
            messagingSenderId: '1012437149503',
            projectId: 'shopfly-store',
          ),
        )
      : await Firebase.initializeApp();

  //Prevent Application from Auto-Rotation
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  ).then((_) {
    runApp(const ShopflyApp());
  });
}
