import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.suffix,
  });
  Function(String)? onChanged;
  bool? obscureText;
  String? hintText;
  IconData? suffix;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 75.0,
        decoration: BoxDecoration(
            color: const Color(0xff262a34),
            borderRadius: BorderRadius.circular(22.0)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
            ),
            child: TextField(
              cursorColor: Colors.white,
              obscureText: obscureText!,
              onChanged: onChanged,
              decoration: InputDecoration(
                suffixIcon:Icon(suffix) ,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.shade700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
