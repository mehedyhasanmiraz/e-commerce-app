import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/appbar_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/chip_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/elevated_button_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/outline_button_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/text_fields_theme.dart';
import 'package:flutter_ecommerce/utils/themes/custom_theme/text_theme.dart';

class TAppTheme{
  // TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButton,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButton,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButton,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButton,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}