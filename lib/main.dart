import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'data/Repository/authentication/Authentication_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Todo: Add widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// -Get local storage
  await GetStorage.init();

  /// Todo: await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Todo: Initialize firebase & Authentication Repository
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));




  // Todo: initialize Authentication

  runApp(const MyApp());
}

/// done