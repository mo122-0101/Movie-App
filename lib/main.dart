import 'package:flutter/material.dart';
import 'package:movie/authentication_module/presentation/screens/forgot_password_screen.dart';
import 'package:movie/authentication_module/presentation/screens/sign_in_screen.dart';
import 'package:movie/core/services/services_locator.dart';


import 'authentication_module/presentation/screens/get_start_screen.dart';
import 'authentication_module/presentation/screens/sign_up_screen.dart';



void main(){
ServicesLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
          SignInScreen.id:(context)=> const SignInScreen(),
          SignUpScreen.id:(context)=> const SignUpScreen(),
          ForgotPasswordScreen.id:(context)=> const ForgotPasswordScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData.dark().copyWith(

          scaffoldBackgroundColor: Colors.grey.shade900 ,
      ),



      home: const GetStartScreen(),
    );
  }
}

