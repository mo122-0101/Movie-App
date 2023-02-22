import 'dart:core';

import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  DefaultFormField({super.key,
    required this.validate,
    this.onTap,
    this.color=Colors.grey,
    this.onSubmit,
    this.suffix,
    required this.label,
    this.obscureText=false,
    this.isClickable,
    this.onChange,
   this.prefix,
    this.suffixPressed,
    required this.controller,
    required this.type,
  });
  TextEditingController controller;
  TextInputType type;
  final Color color;
  Function(String)? onSubmit;
  Function(String)? onChange;
  Function(dynamic)? onTap;
  bool? obscureText;
  Function(String) validate;
  String label;
  IconData? prefix;
  IconData? suffix;
  Function? suffixPressed;
  bool? isClickable = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
style: const TextStyle(fontSize: 17,),
        controller: controller,
        keyboardType: type,
        obscureText: obscureText!,
        enabled: isClickable,
        onFieldSubmitted: (s) {
          onSubmit!(s);
        },
        onChanged:
        onChange,

        onTap: () {
          onTap;
        },
        validator: (s) {
          validate;
        },
        decoration: InputDecoration(

          filled: true,
          fillColor: Colors.grey.shade700,
          labelText: label,
          prefixIcon: Icon(
            prefix,
          ),
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: () {
              suffixPressed;
            },
            icon: Icon(
              suffix,
            ),
          )
              : null,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))),
        ),
      ),
    );
  }
}
