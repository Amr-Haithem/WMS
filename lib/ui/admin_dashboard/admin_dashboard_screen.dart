import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';
import 'package:storage_management_system/data/model/employee.dart';
import 'package:storage_management_system/ui/frequently_used_widgets/employee_card_widget.dart';

import '../frequently_used_widgets/item_card_widget.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() =>
      _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
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
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: mainOffWhite,
              ),
              child: const DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: TabBar(
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Text('Storage center',
                          style: TextStyle(
                            color: mainBlue,
                            fontSize: 20,
                            fontFamily: 'IBM',
                          ),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Text('Employees',
                          style: TextStyle(
                            color: mainBlue,
                            fontSize: 20,
                            fontFamily: 'IBM',
                          ),),
                      )
                    ],
                  ),

                  body:  TabBarView(
                    children: [

                      // Login(),
                      // Register(),

                    ],
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.only(top: 10, left: screenHeight*0.1),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(40),
            //     child: Image.asset('assets/images/logo.jpg',
            //       width: screenWidth*0.115,
            //       height: screenHeight*0.115,),
            //   ),
            // ),
          ],
        ),
        // ListView(
        //   scrollDirection: Axis.vertical,
        //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //   children: <Widget>[
        //     const SizedBox(height: small_padding),
        //     EmployeeCardWidget(
        //       employee: sampleEmployee1,
        //       onClicked: () {},
        //     ),
        //
        //     Center(
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               const SizedBox(height: large_padding),
        //               ItemCardWidget(
        //                 onClicked: () {},
        //                 donatedItemCategory: electronics,
        //                 iconName: Icons.devices_outlined,
        //               ),
        //               const SizedBox(height: large_padding),
        //
        //               ItemCardWidget(
        //                 onClicked: () {},
        //                 donatedItemCategory: clothes,
        //                 iconName: Icons.man_outlined,
        //               ),
        //             ],
        //           ),
        //           const SizedBox(width: large_padding),
        //
        //           Column(
        //             children: [
        //               const SizedBox(height: large_padding),
        //               ItemCardWidget(
        //                 onClicked: () {},
        //                 donatedItemCategory: books,
        //                 iconName: Icons.menu_book_outlined,
        //
        //               ),
        //               const SizedBox(height: large_padding),
        //
        //               ItemCardWidget(
        //                 onClicked: () {},
        //                 donatedItemCategory: furniture,
        //                 iconName: Icons.chair_outlined,
        //
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //   ],
        // )
    );
  }
}
