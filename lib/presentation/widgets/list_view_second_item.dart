import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class ListViewSecondItem extends StatelessWidget {
  const ListViewSecondItem({super.key, required String itemName, required IconData itemIcon}) : _itemIcon = itemIcon, _itemName = itemName;

  final String _itemName;
  final IconData _itemIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p8),
        decoration: const BoxDecoration(
          color: ColorManager.lightPrimary,
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          boxShadow: [
            BoxShadow(
                color: ColorManager.black,
                blurRadius: AppSize.s8,
                spreadRadius: AppSize.s2,
                offset: Offset(2, 2)
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(
                  _itemIcon,
                  color: ColorManager.white,
                )
            ),
            Text(
              _itemName,
              style: const TextStyle(
                  color: ColorManager.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
