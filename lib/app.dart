import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/binding/general_binding.dart';
import 'package:flutter_ecommerce/utils/contants/colors.dart';
import 'package:flutter_ecommerce/utils/themes/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home:  Scaffold(
        backgroundColor: TColors.primary,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
                ),
          )),
    );
  }
}