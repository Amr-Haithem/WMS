import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';
import 'package:storage_management_system/data/model/employee.dart';
import 'package:storage_management_system/ui/admin_dashboard/employee_card_for_admin_widget.dart';
import 'package:storage_management_system/ui/frequently_used_widgets/employee_card_widget.dart';

import '../frequently_used_widgets/item_card_widget.dart';

class EmployeesTab extends StatefulWidget {
  const EmployeesTab({super.key});

  @override
  State<EmployeesTab> createState() =>
      _EmployeesTabState();
}





class _EmployeesTabState extends State<EmployeesTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[

          const SizedBox(height: small_padding),

          for (int i = 0 ; i < employees.length; i++)
              EmployeeCardInAdminDashboard(
                employee: employees.elementAt(i),
                onClicked: () {},
              ),
        ],
      ),



    );
  }
}