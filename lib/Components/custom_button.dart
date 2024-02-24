import 'package:flutter/material.dart';
import 'package:profile_screen/utils/custom_text_style.dart';



class CustomButton extends StatelessWidget{
  const CustomButton({Key? key, required this.label, required this.color, required this.onPressed, required this.textColor}) : super(key: key);

  final String label;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: color,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          )
      ),
      onPressed: onPressed,
      child:Text(
          label,
          style:CustomTextStyle.textStyle(18, FontWeight.bold,textColor)),

    );
  }

}