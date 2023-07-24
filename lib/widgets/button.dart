
import 'package:e_planet/presentation/ressources/color_manager.dart';
import 'package:e_planet/presentation/ressources/values_manager.dart';
import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14))
            ),
      minimumSize: Size(AppSize.s345, AppSize.s56_32),
      backgroundColor: ColorManager.green,        
);
            