import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../widgets/list_view_first_item.dart';
import '../widgets/list_view_second_item.dart';

class FinancingScreen extends StatelessWidget {
  const FinancingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.lightPrimary,
      child: ListView(
        children: const [
          ListViewFirstItem(itemName: AppStrings.financingCorporate),
          ListViewFirstItem(itemName: AppStrings.financingIndividual),
          ListViewFirstItem(itemName: AppStrings.financingSelfEmployed),
          ListViewSecondItem(itemName: AppStrings.financingFactories, itemIcon: Icons.view_list_rounded,),
          ListViewSecondItem(itemName: AppStrings.financingFinance, itemIcon: Icons.playlist_add_check,),
          ListViewSecondItem(itemName: AppStrings.financingFAQ, itemIcon: Icons.question_answer,),
        ],
      ),
    );
  }
}
