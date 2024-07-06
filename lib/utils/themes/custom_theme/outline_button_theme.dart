import 'package:flutter/material.dart';

class TOutlineButtonTheme{
  TOutlineButtonTheme._();

  /// light Theme
  static final lightOutlineButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.blue,
      side: BorderSide(color: Colors.black),
      textStyle: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  /// dark Theme
  static final darkOutlineButton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.blue,
          side: BorderSide(color: Colors.white),
          textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );

}