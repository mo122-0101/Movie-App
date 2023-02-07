import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final Color color;
  final double borderRadius;
  final String text;

  final double fontSize;
  final VoidCallback function;

   const ButtonWidget({Key? key, required this.color, required this.text, this.borderRadius = 25, this.fontSize = 20,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(text, textAlign: TextAlign.center ,style: TextStyle(fontSize: fontSize,  ), ),
      ),
    );
  }
}