import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';
import 'package:storage_management_system/data/model/employee.dart';

import '../frequently_used_widgets/ItemCardWidget.dart';

class StorageCenterTab extends StatefulWidget {
  const StorageCenterTab({super.key});

  @override
  State<StorageCenterTab> createState() =>
      _StorageCenterTabState();
}

class _StorageCenterTabState extends State<StorageCenterTab> {
  Employee sampleEmployee = sampleEmployee1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

        GridView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          reverse: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
               crossAxisCount: 3,
               crossAxisSpacing: medium_padding,
            ),

          children: <Widget>[
            const SizedBox(height: medium_padding),


            for (int i = 0 ; i < categories.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemCardWidget(
                  onClicked: () {},
                  donatedItemCategory: categories.elementAt(i),
                ),
              ),

         ],
       )




   );
 }
}
