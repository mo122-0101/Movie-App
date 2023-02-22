import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/authentication_module/presentation/controller/login_cubit/login_cubit.dart';
import 'package:movie/authentication_module/presentation/screens/forgot_password_screen.dart';
import 'package:movie/authentication_module/presentation/screens/sign_up_screen.dart';

import '../widget/button_widget.dart';
import '../widget/text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  static const String id = 'sign in';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MovieLoginCubit(),
      child: BlocConsumer<MovieLoginCubit, MovieLoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xff16181e),
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Welcome Back!',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'please sign in to your account!',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.grey.shade700,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        DefaultFormField(
                            label: "robertfox@mail.com",
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (value) {
                              if (value.isEmpty) {
                                return "Email Address must be not empty";
                              }
                            }),
                        const SizedBox(
                          height: 15,
                        ),
                        DefaultFormField(
                          label: "Password",
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          suffix: Icons.visibility_outlined,
                          obscureText: true,
                          suffixPressed: () {},
                          onSubmit: (value){
                            if (formKey.currentState!.validate()) {
                              MovieLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return "password must be not empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 30.0,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    ForgotPasswordScreen.id,
                                  );
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.grey.shade700,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: ConditionalBuilder(
                            condition: state is! MovieLoginLoadingState,
                            builder: (context) => ButtonWidget(
                              color: const Color(0xff5468ff),
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  MovieLoginCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passwordController.text);
                                }
                              },
                              text: "Sign In",
                            ),
                            fallback: (context) => const Center(
                                child: CircularProgressIndicator()),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text(
                                "Sign In With Google",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an Account?",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade700,
                                fontSize: 17.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  SignUpScreen.id,
                                );
                              },
                              child: Text(
                                "Sign UP",
                                style: GoogleFonts.aBeeZee(
                                    color: const Color(0xff495ad6),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
