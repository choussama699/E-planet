import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color){
  return TextStyle(
    fontFamily: FontConstants.fontfamily,
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

//regular text

TextStyle getRegularText(
  {double fontSize = FontSize.s17, required Color color}){
  return _getTextStyle(fontSize, FontWeightManger.regular, color);
}

//light text

TextStyle getLightText(
  {double fontSize = FontSize.s11_17, required Color color}){
  return _getTextStyle(fontSize, FontWeightManger.light, color);
}

//medium text

TextStyle getMediumText(
  {double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontWeightManger.medium, color);
}

//bold text

TextStyle getBoldText(
  {double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontWeightManger.bold, color);
}

//semibold text

TextStyle getSemiBoldText(
  {double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontWeightManger.semiBold, color);
}