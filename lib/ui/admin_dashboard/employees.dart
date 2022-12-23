import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';
import 'package:storage_management_system/data/model/employee.dart';
import 'package:storage_management_system/ui/frequently_used_widgets/employee_card_widget.dart';

import '../frequently_used_widgets/item_card_widget.dart';

class EmployeesTab extends StatefulWidget {
  const EmployeesTab({super.key});

  @override
  State<EmployeesTab> createState() =>
      _EmployeesTabState();
}

class _EmployeesTabState extends State<EmployeesTab> {
  Employee sampleEmployee = sampleEmployee1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: mainBlue,
          leading: IconButton(

            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          title: const Text('Dashboard',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            const SizedBox(height: small_padding),
            EmployeeCardWidget(
              employee: sampleEmployee1,
              onClicked: () {},
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: large_padding),
                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: electronics,
                        iconName: Icons.devices_outlined,
                      ),
                      const SizedBox(height: large_padding),

                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: clothes,
                        iconName: Icons.man_outlined,
                      ),
                    ],
                  ),
                  const SizedBox(width: large_padding),

                  Column(
                    children: [
                      const SizedBox(height: large_padding),
                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: books,
                        iconName: Icons.menu_book_outlined,

                      ),
                      const SizedBox(height: large_padding),

                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: furniture,
                        iconName: Icons.chair_outlined,

                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
