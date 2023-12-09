import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required String itemName}) : _itemName = itemName;

  final String  _itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s60),
        ),
        child: InkWell(
          onTap: () { },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, color: ColorManager.fabBackground, size: AppSize.s40,),
              const SizedBox(height: AppSize.s16,),
              Text(
                _itemName,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
