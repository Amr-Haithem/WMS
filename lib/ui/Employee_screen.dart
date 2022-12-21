import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';
import 'package:storage_management_system/data/model/employee.dart';
import 'package:storage_management_system/ui/employee_card_widget.dart';

import 'item_card_widget.dart';

class EmployeeDashboardScreen extends StatefulWidget {
  const EmployeeDashboardScreen({super.key});

  @override
  State<EmployeeDashboardScreen> createState() =>
      _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {
  Employee sampleEmployee = sampleEmployee1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back, color: mainBlue),
          ),
          title: const Text('Dashboard',
              style:
                  TextStyle(color: mainBlue, fontWeight: FontWeight.w700)),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
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
                      const SizedBox(height: medium_padding),
                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: electronics,
                        iconName: Icons.devices_outlined,
                      ),
                      const SizedBox(height: medium_padding),

                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: clothes,
                        iconName: Icons.man_outlined,
                      ),
                    ],
                  ),
                  const SizedBox(width: medium_padding),

                  Column(
                    children: [
                      const SizedBox(height: medium_padding),
                      ItemCardWidget(
                        onClicked: () {},
                        donatedItemCategory: books,
                        iconName: Icons.menu_book_outlined,

                      ),
                      const SizedBox(height: medium_padding),

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



            //
            // CustomScrollView(
            //   primary: false,
            //   slivers: <Widget>[
            //     SliverPadding(
            //       padding: const EdgeInsets.all(20),
            //       sliver: SliverGrid.count(
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10,
            //         crossAxisCount: 2,
            //         children: <Widget>[
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[100],
            //             child: const Text("He'd have you all unravel at the"),
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[200],
            //             child: const Text('Heed not the rabble'),
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[300],
            //             child: const Text('Sound of screams but the'),
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[400],
            //             child: const Text('Who scream'),
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[500],
            //             child: const Text('Revolution is coming...'),
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             color: Colors.green[600],
            //             child: const Text('Revolution, they...'),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // )
          ],
        ));
  }
}
