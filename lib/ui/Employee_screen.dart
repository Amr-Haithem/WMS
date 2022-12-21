import 'package:flutter/material.dart';

import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/employee.dart';
import 'package:storage_management_system/ui/button_widget.dart';


class EmployeeDashboardScreen extends StatefulWidget {
  const EmployeeDashboardScreen({super.key});

  @override
  State<EmployeeDashboardScreen> createState() => _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {

Employee sampleEmployee = sampleEmployee1;

  @override

  Widget build(BuildContext context) {


    return Scaffold
      (
        appBar: AppBar
          (
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton
            (
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('Shop Items (3)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          // actions: <Widget>
          // [
          //   Container
          //   (
          //     margin: EdgeInsets.only(right: 8.0),
          //     child: Row
          //     (
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: <Widget>
          //       [
          //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
          //         Icon(Icons.arrow_drop_down, color: Colors.black54)
          //       ],
          //     ),
          //   )
          // ],
        ),
        body: ListView
          (
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>
          [
            Container
              (
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
                child: Material
                  (
                  elevation: 8.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32.0),
                  child: InkWell
                    (
                    onTap: () {},
                    child: Padding
                      (
                      padding: EdgeInsets.all(12.0),
                      child: Row
                        (
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>
                        [
                          Icon(Icons.add, color: Colors.white),
                          Padding(padding: EdgeInsets.only(right: 16.0)),
                          Text('ADD A ITEM', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                )
            ),
            EmployeeCardWidget(),

          ],
        )
    );
  }
}

class EmployeeCardWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: const EdgeInsets.only(bottom: small_padding),
      child: Stack
        (
        children: <Widget>
        [

          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [

                    Container
                      (
                      margin: const EdgeInsets.only(top: medium_padding),
                      child: Material
                        (
                        elevation: small_padding,
                        borderRadius: BorderRadius.circular(small_padding),
                        shadowColor: mainOffWhite,
                        color: Colors.white,
                        child: InkWell
                          (
                          onTap: (){} ,//=> Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemReviewsPage())),
                          child: Padding
                            (
                            padding: const EdgeInsets.all(medium_padding),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                     Text('Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const <Widget>
                                      [
                                        Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.black, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Text('Bought', style: TextStyle()),
                                    const Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                    ),
                                    Text('times for a profit of', style: TextStyle()),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Material
                                        (
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.green,
                                        child: const Padding
                                          (
                                          padding: EdgeInsets.all(4.0),
                                          child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// Item image
                    Align
                      (
                      alignment: Alignment.topRight,
                      child: Padding
                        (
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize
                          (
                          size: Size.fromRadius(54.0),
                          child: Material
                            (
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset('assets/images/Mohamed2.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review

        ],
      ),
    );
  }
}
