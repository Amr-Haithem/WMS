import 'package:flutter/material.dart';

import '../../constants/project_measures.dart';
import '../../model/model/category.dart';
import '../frequently_used_widgets/ItemCardWidget.dart';

class StorageCenterTab extends StatefulWidget {
  const StorageCenterTab({super.key,required this.categories});
  final List<Category> categories;

  @override
  State<StorageCenterTab> createState() => _StorageCenterTabState();
}

class _StorageCenterTabState extends State<StorageCenterTab> {
  // Employee sampleEmployee = sampleEmployee1;
  int cardNum = 0;

  @override
  Widget build(BuildContext context) {
    final List<ItemCardWidget> categoriesCards = List.generate(
      widget.categories.length,
      (index) => ItemCardWidget(
        onClicked: () {},
        category: widget.categories.elementAt(cardNum),
      ),
    );
    return Scaffold(
      body:

          //the for loop below is a stupid solution to view all cards for all categories assign to this.employee
          //cause the stupid GridView wouldn't work
          //I'm basically dividing categories cards into rows, each rows can take up to 3 cards.
          // so, two nested for loops, first one for rows, second one for columns (for cards in each row)

          //  for (int rowNum = 0 ; rowNum <  (categories.length).toInt(); rowNum++)

          Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        //  direction: Axis.horizontal,
        //   crossAxisAlignment: WrapCrossAlignment.end,
        //    alignment: WrapAlignment.center,
        //  verticalDirection: VerticalDirection.down,
        //  runSpacing: small_padding,
        children: [
          for (int rowNum = 0; rowNum < (widget.categories.length).toInt(); rowNum++)
            Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              runSpacing: small_padding,
              children: [
                for (int colNum = 0;
                    colNum < 1 && cardNum < widget.categories.length;
                    colNum++, cardNum++)
                  Padding(
                    padding: EdgeInsets.all(small_padding),
                    child: ItemCardWidget(
                        onClicked: () {},
                        category: widget.categories.elementAt(cardNum)),
                  ),
              ],
            ),
          // categoriesCards,
        ],
      ),
    );
  }
}
