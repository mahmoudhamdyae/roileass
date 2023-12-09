import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: AppSize.s28,),
      Image.asset(ImageAssets.splashLogo),
      const SizedBox(height: AppSize.s8,),
      Divider(height: 2, color: ColorManager.primary,),
      const SizedBox(height: AppSize.s8,),
      // About Us
      InkWell(
        onTap: () { },
        child: const Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(AppStrings.drawerAboutUs, style: TextStyle(fontWeight: FontWeightManager.medium, color: ColorManager.primary),),
        ),
      ),
      // Terms of Services
      InkWell(
        onTap: () { },
        child: const Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(AppStrings.drawerTermsOfServices, style: TextStyle(fontWeight: FontWeightManager.medium, color: ColorManager.primary),),
        ),
      ),
      // Privacy Policy
      InkWell(
        onTap: () { },
        child: const Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(AppStrings.drawerPrivacyPolicy, style: TextStyle(fontWeight: FontWeightManager.medium, color: ColorManager.primary),),
        ),
      ),
      // Contact Us
      InkWell(
        onTap: () { },
        child: const Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(AppStrings.drawerContactUs, style: TextStyle(fontWeight: FontWeightManager.medium, color: ColorManager.primary),),
        ),
      ),
      // Finance FAQ
      InkWell(
        onTap: () { },
        child: const Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Text(AppStrings.drawerFinanceFAQ, style: TextStyle(fontWeight: FontWeightManager.medium, color: ColorManager.primary),),
        ),
      ),
      const SizedBox(height: AppSize.s16,),
      // Social Icons
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // App Icon
          IconButton(onPressed: () { }, icon: const Icon(Icons.facebook, color: ColorManager.fabBackground,)),
          // Facebook
          IconButton(onPressed: () { }, icon: const Icon(Icons.facebook, color: ColorManager.fabBackground,)),
          // Twitter
          IconButton(onPressed: () { }, icon: const Icon(Icons.facebook, color: ColorManager.fabBackground,)),
          // Instagram
          IconButton(onPressed: () { }, icon: const Icon(Icons.facebook, color: ColorManager.fabBackground,)),
          // Linkedin
          IconButton(onPressed: () { }, icon: const Icon(Icons.facebook, color: ColorManager.fabBackground,)),
        ],
      )
    ],);
  }
}
