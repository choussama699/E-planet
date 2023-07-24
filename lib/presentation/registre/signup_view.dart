import 'package:e_planet/presentation/ressources/color_manager.dart';
import 'package:e_planet/presentation/ressources/font_manager.dart';
import 'package:e_planet/presentation/ressources/strings_manager.dart';
import 'package:e_planet/presentation/ressources/styles_manager.dart';
import 'package:e_planet/presentation/ressources/values_manager.dart';



import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';

import '../../widgets/button.dart';



class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  late String myemail, mypassword, myfullName;

   SignUp()async{
    
    var formdata = _globalKey.currentState;
    if(formdata!.validate()){
      formdata.save();
      try {
   final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: myemail,
    password: mypassword,
  );
  return credential;
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
    }
   }
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primary,
      ),
      
       body: Form(
        key: _globalKey,
         child: ListView(
          children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 22,bottom: 5.69,top: 8),
            child: Text(AppString.helloLetsCreateYourAccount,
             style: TextStyle(
              fontWeight: FontWeightManger.semiBold,
              fontSize: FontSize.s24_4,)),),
       
           Padding(
             padding: const EdgeInsets.only(
              bottom: 33.31,
              left: 22,
             ),
             child: Text(AppString.welcomeWriteDownYourInfoPlease,
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
            child:TextFormField(
              onSaved: (value){ myemail = value!;},
      validator: (value){
        if(value!.length > 20){
           return "Email can't be larger than 20";}
        if(value.length < 10){
           return "Email can't be larger than 10";}
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

          //Full name Text + form field
           Padding(
             padding: const EdgeInsets.only(
              bottom: 7.57,
              left: 24,
              top: 21,
             ),
             child: Text(AppString.fullName,
             style: TextStyle(
              fontWeight: FontWeightManger.medium,
              fontSize: FontSize.s13_07,
              color: ColorManager.twoGrey,
             ),),
           ),
           
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
              onSaved: (value){ myfullName = value!;},
       validator: (value){
        if(value!.length > 20){
           return "Full Name can't be larger than 20";}
        if(value.length < 10){
           return "Full Name can't be larger than 10";}
      },
      
      decoration: InputDecoration(
        hintText: AppString.writeYourFullName,
        
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
              onSaved: (value){ mypassword = value!;},
       validator: (value){  
        if(value!.length < 5){
           return "passsword is very weak";}
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
            
        
           
           
          
          
          //button create my acoount
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: buttonPrimary,
              
                onPressed: ()async{
                  UserCredential response = await SignUp();
                  print("===================================>");
                  print(response.user!.email);
                  print("===================================>");
                  print("===================================>");
                  print(response.user?.uid);
                  
                  

                },
                child: Text(AppString.createMyAccount,textAlign: TextAlign.center,
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
               top:150,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("login");
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

