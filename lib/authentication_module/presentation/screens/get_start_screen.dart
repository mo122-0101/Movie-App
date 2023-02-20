import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/authentication_module/presentation/screens/sign_in_screen.dart';


import '../widget/button_widget.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/thriller_movies.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
          children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: RichText(text: TextSpan(
                        text: "movie",
                        style:
                          GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30.0,

                          ),
                          children: const <TextSpan>[
                            TextSpan(text: '.', style: TextStyle(
                              color: Color(0xff5468ff),
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ))
                          ]
                        ),

                ),
                    ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  " Watch your favorite movies or series on \n"
                  " only one platform.You can watch it \n"
                  " anytime and anywhere",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey,
                    fontSize: 15.0,

                  ),
                  maxLines: 3,
    ),
              ),
            const SizedBox(height: 40,),
          ButtonWidget(color:const Color(0xff5468ff), text: 'Get Started', function:(){Navigator.pushNamed(context, SignInScreen.id,);},)
          ],

          ),
        ),
          )
      ),
    );



  }
}
