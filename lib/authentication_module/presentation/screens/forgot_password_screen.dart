import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/authentication_module/presentation/screens/sign_up_screen.dart';

import '../widget/button_widget.dart';
import '../widget/text_field.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const String id = 'forgot password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff16181e),
      body: SafeArea(
      child: Center(
        child: Column(

          children:  [
            const SizedBox(height: 70,),
            Text('Forgot Password?',

              style: GoogleFonts.aBeeZee(
                color: Colors.white,

                fontSize: 25.0,

              ),),
            const SizedBox(height: 15,),
            Center(
              child: Text('please enter  your email \n associated with your account!',

                style: GoogleFonts.aBeeZee(
                  color: Colors.grey.shade700,
                  fontSize: 14.0,

                ),),
            ),
            const SizedBox(height: 60,),
            DefaultTextField(
              hintText: "Email", ),
            const SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ButtonWidget(color: const Color(0xff5468ff), text: "Submit", function: (){}),
            ),
            const SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account?", style:GoogleFonts.aBeeZee(
                  color: Colors.grey.shade700,
                  fontSize: 16.0,

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
    ),);
  }
}
