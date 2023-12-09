import 'package:flutter/cupertino.dart';

import 'grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required List<String> stringsList}) : _stringsList = stringsList;

  final List<String> _stringsList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(_stringsList.length, (index) {
        return GridViewItem(itemName: _stringsList[index]);
      }),
    );
  }
}
