import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text_style.dart';

class MenuItems extends StatelessWidget {
  final String text;
  final String iconPath;

  const MenuItems({super.key, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: AppColors.components,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Row(
        children: [
            Image.asset(iconPath,width: 20.0,height: 20.0,),
            const SizedBox(width: 20.0,),
            Text(text,style: CustomTextStyle.textStyle(16,FontWeight.w500),),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            )
        ],
      ),
    );
  }

}