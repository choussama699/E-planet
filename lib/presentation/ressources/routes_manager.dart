import 'package:e_planet/presentation/ressources/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login_view.dart';
import '../registre/signup_view.dart';


class Routes{
  static const String loginRoute ="/login";
  static const String registerRoute ="/register";
  

}

class RouteGenrator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.loginRoute : return MaterialPageRoute(builder: (_)=> const LoginView());
      case Routes.registerRoute : return MaterialPageRoute(builder: (_)=> const SignupView());

      default : return UndefinedRoute();
    }
    
  }

  static Route<dynamic> UndefinedRoute(){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(title: Text(AppString.noRouteFound),),
      body: Center(child: Text(AppString.noRouteFound),),
    ));
  }
}