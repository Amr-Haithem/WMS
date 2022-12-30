import 'package:flutter/material.dart';

import '../../constants/project_measures.dart';
import '../../model/model/category.dart';
import '../frequently_used_widgets/ItemCardWidget.dart';

class StorageCenterTab extends StatefulWidget {
  const StorageCenterTab({super.key, required this.categories});
  final List<Category> categories;

  @override
  State<StorageCenterTab> createState() => _StorageCenterTabState();
}

class _StorageCenterTabState extends State<StorageCenterTab> {
  // Employee sampleEmployee = sampleEmployee1;

  @override
  Widget build(BuildContext context) {
    final List<ItemCardWidget> categoriesCards = List.generate(
      widget.categories.length,
      (index) => ItemCardWidget(
        onClicked: () {},
        category: widget.categories.elementAt(index),
      ),
    );
    print(categoriesCards);
    return Scaffold(
      body:

          //the for loop below is a stupid solution to view all cards for all categories assign to this.employee
          //cause the stupid GridView wouldn't work
          //I'm basically dividing categories cards into rows, each rows can take up to 3 cards.
          // so, two nested for loops, first one for rows, second one for columns (for cards in each row)

          //  for (int rowNum = 0 ; rowNum <  (categories.length).toInt(); rowNum++)

          Wrap(
        runAlignment: WrapAlignment.start,
        alignment: WrapAlignment.start,
        direction: Axis.vertical,
        runSpacing: 5,
        //   crossAxisAlignment: WrapCrossAlignment.end,
        //    alignment: WrapAlignment.center,
        //  verticalDirection: VerticalDirection.down,
        //  runSpacing: small_padding,
        children: [
          Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              runSpacing: small_padding,
              children: categoriesCards),
          // categoriesCards,
        ],
      ),
    );
  }
}
