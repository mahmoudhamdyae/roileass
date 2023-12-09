import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:roileass/presentation/screens/services_screen.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/constants_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_fab.dart';
import 'financing_screen.dart';
import 'home_screen.dart';
import 'me_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      const FinancingScreen(),
      ServicesScreen(),
      MeScreen()
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home, color: ColorManager.white,),
        title: AppStrings.bottomBarHome,
        activeColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.money_dollar_circle_fill, color: ColorManager.white,),
        title: AppStrings.bottomBarFinancing,
        activeColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_repair_service_sharp, color: ColorManager.white,),
        title: AppStrings.bottomBarServices,
        activeColorPrimary: ColorManager.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person, color: ColorManager.white,),
        title: AppStrings.bottomBarMe,
        activeColorPrimary: ColorManager.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: CustomDrawer(),
      ),
      floatingActionButton: const CustomFAB(),
      appBar: AppBar(
          title: const Text(AppStrings.topBarTitle),
          iconTheme: const IconThemeData(color: ColorManager.white),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () { },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppPadding.p18),
                    child: Image.asset(
                        ImageAssets.egypt,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: ColorManager.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ]
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: ColorManager.primary,
        decoration: const NavBarDecoration(
          colorBehindNavBar: ColorManager.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: AppConstants.sliderAnimationTime),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: AppConstants.sliderAnimationTime),
        ),
        navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
      ),
    );
  }
}
