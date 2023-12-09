import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class ListViewFirstItem extends StatelessWidget {
  const ListViewFirstItem({super.key, required String itemName}) : _itemName = itemName;

  final String _itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p8),
        decoration: const BoxDecoration(
          color: ColorManager.primary,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                _itemName,
              style: const TextStyle(
                color: ColorManager.white
              ),
            ),
            IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.arrow_downward,
                  color: ColorManager.white,
                )
            )
          ],
        ),
      ),
    );
  }
}
