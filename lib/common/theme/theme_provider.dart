import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/theme/dark_theme.dart';
import 'package:food_delivery_app/common/theme/light_theme.dart';

class ThemeProvider with ChangeNotifier{

  ThemeData _themeData = lighTheme;

  ThemeData get theme => _themeData;

  bool get isDarkTheme => _themeData == darkTheme;

  // ignore: non_constant_identifier_names
  set ThemeData(ThemeData themeData){
    _themeData = themeData;
  }

  void toggleTheme(){
    if(_themeData == darkTheme){
      _themeData = lighTheme;
    }else{
      _themeData = darkTheme;
    }

  }

}