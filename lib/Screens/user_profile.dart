import 'package:flutter/material.dart';
import 'package:profile_screen/Components/custom_button.dart';
import 'package:profile_screen/utils/custom_text_style.dart';

import '../Components/menu_items.dart';
import '../utils/app_colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.light,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundAvatar,
                border: Border.all(color: AppColors.primary)
              ),
              child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset("assets/icons/user.png",fit: BoxFit.contain,)),
            ),
            const SizedBox(height: 10.0,),
            Text("John Doe",style: CustomTextStyle.textStyle(18, FontWeight.bold)),
            const SizedBox(height: 2.0,),
            Text("john.doe@example.com",style: CustomTextStyle.textStyle(15, FontWeight.normal)),
            const SizedBox(height: 10.0,),
            SizedBox(
              width: 200.0,
              child: CustomButton(label: "Upgrade to PRO", color: AppColors.primary,textColor: AppColors.dark, onPressed: (){
        
              }),
            ),
            const SizedBox(height: 15.0,),
            const MenuItems(text: "Privacy",iconPath: "assets/icons/icons8-privacy-48.png",),
            const MenuItems(text: "Purchase History",iconPath: "assets/icons/icons8-history-24.png",),
            const MenuItems(text: "Help & Support",iconPath: "assets/icons/help_support.png",),
            const MenuItems(text: "Settings",iconPath: "assets/icons/icons8-settings-24.png",),
            const MenuItems(text: "Invite A Friend",iconPath: "assets/icons/user.png",),
            const SizedBox(height: 10.0,),
            SizedBox(
              width: 370.0,
              child: CustomButton(label: "Logout", color: AppColors.dark,
                  textColor: AppColors.light,
                  onPressed: (){

              }),
            )
          ],
        ),
      ),
    );
  }




}