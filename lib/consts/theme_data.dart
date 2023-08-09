import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/consts/app_colors.dart';

class Styles{
  static ThemeData themeData({
    required bool isDarkTheme,
    required BuildContext context,
}){
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.darkscaffoldColor
          : AppColors.lightscaffoldColor,
      cardColor: isDarkTheme
          ?  Color.fromARGB(255,13,6,37)
          :  AppColors.lightCardColor,
      brightness: isDarkTheme? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: isDarkTheme
              ?Colors.white:Colors.black),
        backgroundColor: isDarkTheme
            ?AppColors.darkscaffoldColor
            :AppColors.lightscaffoldColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: isDarkTheme ? Colors.white:Colors.black,
        ),

      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
          fillColor:Colors.grey.shade100 ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2,
                  color: isDarkTheme ? Colors.white :Colors.black),
              borderRadius: BorderRadius.circular(12.0)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2,
              color: isDarkTheme ? Colors.white :Colors.black),
            borderRadius: BorderRadius.circular(12.0)
          ),
          errorBorder: OutlineInputBorder(
            borderSide:BorderSide(width: 2,
                color: Theme.of(context).colorScheme.error),
          ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1,
          color: Theme.of(context).colorScheme.error),
          borderRadius: BorderRadius.circular(12.0)
        ),
      ),


    );
  }

}