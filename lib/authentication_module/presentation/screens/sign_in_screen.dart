import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/authentication_module/presentation/screens/forgot_password_screen.dart';
import 'package:movie/authentication_module/presentation/screens/sign_up_screen.dart';

import '../widget/button_widget.dart';
import '../widget/text_field.dart';

class SignInScreen extends StatelessWidget {

  const SignInScreen({Key? key}) : super(key: key);
static const String id = 'sign in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff16181e),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              children:  [
                const SizedBox(height: 60,),
              Text('Welcome Back!',

                    style: GoogleFonts.aBeeZee(
                      color: Colors.white,

                      fontSize: 25.0,

                    ),),
                const SizedBox(height: 15,),
                Text('please sign in to your account!',

                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade700,
                    fontSize: 14.0,

                  ),),
               const SizedBox(height: 60,),
               DefaultTextField(
                 hintText: "robertfox@mail.com", ),
                const SizedBox(height: 15,),
                DefaultTextField(hintText: "Password",suffix: Icons.visibility_outlined),
                const SizedBox(height: 30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(
                     right: 30.0,),
                       child: GestureDetector(onTap: (){Navigator.pushNamed(context, ForgotPasswordScreen.id,);},
                         child: Text("Forgot Password?", style:GoogleFonts.aBeeZee(
                           color: Colors.grey.shade700,
                           fontSize: 17.0,

                         ),),
                       ),
                     ),
                   ],
                 ),
                const SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ButtonWidget(color: const Color(0xff5468ff), text: "Sign In", function: (){}, ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ButtonWidget(color: const Color(0xff5468ff), text: "Sign In With Google", function: (){},fontSize: 18, ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?", style:GoogleFonts.aBeeZee(
                      color: Colors.grey.shade700,
                      fontSize: 17.0,

                    ),),
                    GestureDetector(
                      onTap: (){Navigator.pushNamed(context, SignUpScreen.id,);},
                      child: Text("Sign UP",style: GoogleFonts.aBeeZee(
                        color: const Color(0xff495ad6),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold

                      ),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
