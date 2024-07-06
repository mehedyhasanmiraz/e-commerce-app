import 'package:flutter/material.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  // lightTheme
static final lightElevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    side: BorderSide(color: Colors.blue,),
    padding: EdgeInsets.symmetric(vertical: 18),
    textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
  )
);


  // darkTheme
  static final darkElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: BorderSide(color: Colors.blue,),
          padding: EdgeInsets.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
  );
}