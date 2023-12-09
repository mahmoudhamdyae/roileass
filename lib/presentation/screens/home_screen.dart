import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../widgets/custom_grid_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<BannerModel> _listBanners = [
    BannerModel(imagePath: ImageAssets.banner, id: "1"),
    BannerModel(imagePath: ImageAssets.banner, id: "2"),
  ];

  final List<String> _stringsList = [
    AppStrings.homeCorporateFinance,
    AppStrings.homeFactoriesFinance,
    AppStrings.homeIndividualFinance,
    AppStrings.homeSelfEmployedFinance,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerCarousel.fullScreen(
          banners: _listBanners,
          animation: false,
          indicatorBottom: false,
        ),
        Expanded(
          child: Container(
            color: ColorManager.lightPrimary,
            child: CustomGridView(stringsList: _stringsList,),
          ),
        ),
      ],
    );
  }
}
