import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p50),
      child: ClipOval(
        child: FloatingActionButton(
          backgroundColor: ColorManager.fabBackground,
          elevation: AppSize.s20,
          onPressed: () { },
          child: Icon(Icons.message, color: ColorManager.white,),
        ),
      ),
    );
  }
}
