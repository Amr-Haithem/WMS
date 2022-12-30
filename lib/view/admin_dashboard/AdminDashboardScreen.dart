import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/controller/categories/categories_edit/edit_categories_cubit.dart';
import 'package:storage_management_system/view/admin_dashboard/StorageCenterTab.dart';

import '../../controller/categories/categories/categories_cubit.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  void initState() {
    BlocProvider.of<CategoriesCubit>(context).getCategoriesFromDB();
    super.initState();
  }

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
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: mainOffWhite,
            ),
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: TabBar(
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        'Storage center',
                        style: TextStyle(
                          color: mainBlue,
                          fontSize: 20,
                          fontFamily: 'IBM',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                        'Employees',
                        style: TextStyle(
                          color: mainBlue,
                          fontSize: 20,
                          fontFamily: 'IBM',
                        ),
                      ),
                    )
                  ],
                ),
                body: TabBarView(
                  children: [
                    BlocBuilder<CategoriesCubit, CategoriesState>(
                      builder: (context, parentState) {
                        if (parentState is CategoriesLoaded) {
                          return BlocListener<EditCategoriesCubit,
                                  EditCategoriesState>(
                              listener: (context, state) {
                                if (state is EditedCategories) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Edited Categories')));
                                } else if (state is EditCategoriesError) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Error editing categories')));
                                }
                              },
                              child:
                                  //didn't implement state
                                  StorageCenterTab(
                                      categories: parentState.categories));
                        } else if (parentState is CategoriesError) {
                          return Center(
                            child: Text("error"),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                    SizedBox(),

                    // EmployeesTab(),

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
