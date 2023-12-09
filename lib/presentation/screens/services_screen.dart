import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../widgets/custom_grid_view.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({super.key});

  final List<String> _stringsList = [
    AppStrings.servicesFinanceManagement,
    AppStrings.servicesAssetsManagement,
    AppStrings.servicesFinancialServices,
    AppStrings.servicesAccountingServices,
    AppStrings.servicesTaxServices,
    AppStrings.servicesLegalServices,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.lightPrimary,
      child: CustomGridView(stringsList: _stringsList,),
    );
  }
}
