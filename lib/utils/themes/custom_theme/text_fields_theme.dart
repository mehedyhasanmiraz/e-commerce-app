import 'package:flutter/material.dart';

class TTextFieldTheme{
  TTextFieldTheme._();

  /// light text fields theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    //constraints: BoxConstraints.expand(height: 14.inputFieldsHeight),
    labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey,width: 1),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.black12,width: 1)
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.red,width: 1)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.orange,width: 1)
    )
  );


  /// dark text fields theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      //constraints: BoxConstraints.expand(height: 14.inputFieldsHeight),
      labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.white),
      hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.white),
      errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
      border: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Colors.grey,width: 1),
      ),
      enabledBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(14),
      ),
      focusedBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white12,width: 1)
      ),
      errorBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.red,width: 1)
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.orange,width: 1)
      )
  );
}