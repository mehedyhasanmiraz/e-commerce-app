import 'package:flutter/material.dart';

class TCheckBoxTheme{
  TCheckBoxTheme._();

  /// customizable light checkbox
  static  CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        Colors.black;
      }
      return null;
  }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        Colors.transparent;
      }
      return null;
  }),
  );

 /// customizable dark checkbox
  static  CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        Colors.black;
      }
      return null;
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        Colors.transparent;
      }
      return null;
    }),
  );
}