import 'package:e_planet/presentation/ressources/color_manager.dart';
import 'package:e_planet/presentation/ressources/font_manager.dart';
import 'package:e_planet/presentation/ressources/strings_manager.dart';
import 'package:e_planet/presentation/ressources/values_manager.dart';


import 'package:flutter/material.dart';


import '../../widgets/button.dart';
import '../ressources/styles_manager.dart';



class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
   


  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: ColorManager.primary,
      
       body: Form(
        key: _globalKey,
         child: ListView(
          children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 22,bottom: 5.69,top: 79),
            child: Text(AppString.hi,
             style: TextStyle(
              fontWeight: FontWeightManger.semiBold,
              fontSize: FontSize.s24_4,)),),
       
           Padding(
             padding: const EdgeInsets.only(
              bottom: 33.31,
              left: 22,
             ),
             child: Text(AppString.welcomeToEPlant,
             style: TextStyle(
              color: ColorManager.oneGrey,
              fontSize: FontSize.s11_52,
              fontWeight: FontWeightManger.regular,
             ),),
           ),
       
       
           //Email Text + form field
           Padding(
             padding: const EdgeInsets.only(
              bottom: 7.57,
              left: 24,
             ),
             child: Text(AppString.email,
             style: TextStyle(
              fontWeight: FontWeightManger.medium,
              fontSize: FontSize.s13_07,
              color: ColorManager.twoGrey,
             ),),
           ),
           
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
      validator: (value){
        return null;
      },
      
      
      decoration: InputDecoration(
        hintText: AppString.writeYourMail,
        
    hintStyle: getLightText(color: ColorManager.hintcolor,fontSize: FontSize.s11_17),
    
    filled: true,
    fillColor: ColorManager.sevenGrey,
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.enabledborder,),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
     ),
     focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
      
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
      
        focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
    ),)
          ),
       
          // passwrod + form filed
           Padding(
             padding: const EdgeInsets.only(
              bottom: 7.57,
              top: 21,
              left: 24,
             ),
             child: Text(AppString.password,
             style: TextStyle(
              fontWeight: FontWeightManger.medium,
              fontSize: FontSize.s13_07,
              color: ColorManager.twoGrey,
             ),),
           ),
       
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
      validator: (value){
        return null;
      },
      
      
      decoration: InputDecoration(
        hintText: AppString.writeYourPass,
        
    hintStyle: getLightText(color: ColorManager.hintcolor,fontSize: FontSize.s11_17),
    
    filled: true,
    fillColor: ColorManager.sevenGrey,
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.enabledborder,),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
     ),
     focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
      
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
      
        focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
    ),)
          ),
            
        
           // remember me + forgot password 
           
          Padding(
            padding: const EdgeInsets.only(
              top: 5.17,
              bottom: 25.25,
              left: 24,
              right: 25
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              Text(AppString.forgotPassword,
              style: TextStyle(
                color: ColorManager.fiveGrey,
                fontSize: FontSize.s10_83,
                fontWeight: FontWeightManger.regular,
              ),
              ),
              
             
            ],),), 
          
          //button sign in
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: buttonPrimary,
              
                onPressed: ()async{
                  if(_globalKey.currentState!.validate()){
                    //do something => push to next page
                    _globalKey.currentState?.save();
                 
                  }
                },
                child: Text(AppString.signIn,textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s17_69,
                  fontWeight: FontWeightManger.medium,
                ),),
              ),
              ),

              //already have an acoount
              Padding(
                padding: const EdgeInsets.only(
               right: 85,
               left: 85,
               bottom: 53,
               top:200,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("signup");
                  },
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: AppString.alradyHaveAnAccount,
                      style: TextStyle(
                        fontSize: FontSize.s13_07,
                        fontWeight: FontWeightManger.regular,
                        color: ColorManager.oneGrey,)
                      ),
                      TextSpan(text: AppString.signIn,
                      style: TextStyle(
                        fontSize: FontSize.s13_07,
                        fontWeight: FontWeightManger.regular,
                        color: ColorManager.green,)
                      ),
                    ]
                  
                  )),
                ),
              ),
            ]),
       ),
        );


        

    
  }
}

