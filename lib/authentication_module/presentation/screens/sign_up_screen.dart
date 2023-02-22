import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/authentication_module/presentation/screens/sign_in_screen.dart';
import 'package:movie/authentication_module/presentation/widget/text_field.dart';
import '../widget/button_widget.dart';





class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  static const String id = 'sign up';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff16181e),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              children:  [
                const SizedBox(height: 70,),
                Text('Create new account',

                  style: GoogleFonts.aBeeZee(
                    color: Colors.white,

                    fontSize: 25.0,

                  ),),
                const SizedBox(height: 15,),
                Text('please fill in the form to continue',

                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade700,
                    fontSize: 14.0,

                  ),),
                const SizedBox(height: 60,),
                DefaultFormField(validate: (value){}, label: "Full Name", controller: nameController, type: TextInputType.name),

                const SizedBox(height: 15,),
                DefaultFormField(validate: (value){}, label: "Email Address", controller: emailController, type: TextInputType.emailAddress),

                const SizedBox(height: 15,),
                DefaultFormField(validate: (value){}, label: "Phone Number", controller: phoneController, type:TextInputType.phone),

                const SizedBox(height: 15,),
                DefaultFormField(validate: (value){}, label: "Password", controller: passwordController, type: TextInputType.visiblePassword,suffix: Icons.visibility_outlined),
                const SizedBox(height: 30,),

                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ButtonWidget(color: const Color(0xff5468ff), text: "Sign Up", function: (){}, ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" have an Account?", style:GoogleFonts.aBeeZee(
                      color: Colors.grey.shade700,
                      fontSize: 17.0,

                    ),),
                    GestureDetector(
                      onTap: (){Navigator.pushNamed(context, SignInScreen.id,);},
                      child: Text("Sign In",style: GoogleFonts.aBeeZee(
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
