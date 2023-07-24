import 'package:e_planet/presentation/ressources/color_manager.dart';
import 'package:e_planet/presentation/ressources/font_manager.dart';
import 'package:e_planet/presentation/ressources/styles_manager.dart';
import 'package:e_planet/presentation/ressources/values_manager.dart';
import 'package:flutter/material.dart';


ThemeData getApplicationTheme(){
  return ThemeData(
    
    //main colors
    primaryColor: ColorManager.primary,
    

    //card view theme
    cardTheme: CardTheme(
      color: ColorManager.primary,
      
      elevation: AppSize.s4,
    ),

    //app bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      elevation: AppSize.s4,
      titleTextStyle: getRegularText(fontSize: FontSize.s17,color: ColorManager.dark),
    ),

    //button theme
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s7),
        ),
      
      buttonColor: ColorManager.green,
    ),

    //elevated button

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.green,
        textStyle: getRegularText(color: ColorManager.primary, fontSize: FontSize.s17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s7),
        ),
      ),
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldText(color: ColorManager.dark,fontSize: FontSize.s16),
      headlineLarge: getSemiBoldText(color: ColorManager.dark,fontSize: FontSize.s16),
      headlineMedium: getRegularText(color: ColorManager.dark,fontSize: FontSize.s14),
      titleMedium: getMediumText(color: ColorManager.primary, fontSize: FontSize.s16),
      
    ),


    //text form field
    
    

    
    );


  
}