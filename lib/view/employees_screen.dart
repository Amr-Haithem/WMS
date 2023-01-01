import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import '../model/model/employee.dart';
import 'frequently_used_widgets/ItemCardWidget.dart';
import 'frequently_used_widgets/employee_card_widget.dart';

class EmployeeDashboardScreen extends StatefulWidget {
  final Employee employee;
  const EmployeeDashboardScreen({Key? key, required this.employee})
      : super(key: key);

  @override
  State<EmployeeDashboardScreen> createState() =>
      _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {

  @override
  Widget build(BuildContext context) {
    int cardNum = 0;

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
        body: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: <Widget>[
              const SizedBox(height: small_padding),

              EmployeeCardWidget(
                employee: widget.employee,
                onClicked: () {},
              ),
              const SizedBox(height: large_padding),


                  const SizedBox(height: medium_padding),

                  //the for loop below is a stupid solution to view all cards for all categories assign to this.employee
                  //cause the stupid GridView wouldn't work
                  //I'm basically dividing categories cards into rows, each rows can take up to 3 cards.
                  // so, two nested for loops, first one for rows, second one for columns (for cards in each row)

              
                    Wrap(
                      direction: Axis.vertical,
                      runSpacing: small_padding,
                      children: [
                      
                      ],
                    ),

                   ],

        ),

    );


  }
}