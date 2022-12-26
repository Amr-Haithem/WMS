import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/employee.dart';

import '../../constants/project_colors.dart';


class EmployeeCardInAdminDashboard extends StatefulWidget {
  final Employee employee;
  final VoidCallback onClicked;

  const EmployeeCardInAdminDashboard({
    Key? key,
    required this.employee,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<EmployeeCardInAdminDashboard> createState() => _EmployeeCardInAdminDashboardState();
}

class _EmployeeCardInAdminDashboardState extends State<EmployeeCardInAdminDashboard> {
  @override
  Widget build(BuildContext context) =>
      Stack
        (
        children: <Widget>
        [


          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: const Size.fromHeight(172.0),
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
                        //  onTap: () {},
                          child: Padding
                            (
                            padding: const EdgeInsets.all(medium_padding),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [

                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start,
                                  children: <Widget>
                                  [


                                     Text('${widget.employee.name}', style: const TextStyle(
                                        color: mainBlue,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'IBM',
                                         fontSize: medium_font_size),
                                     ),
                                   const SizedBox(height: small_padding),

                                    Text('ID: ${widget.employee.id}',
                                        style: const TextStyle(
                                            color: mainBlue,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'IBM')),
                                    const SizedBox(height: small_padding),


                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [


                                        //Rating bar
                                        RatingBar.builder(
                                          initialRating: widget.employee.rank,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: const EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          itemBuilder: (context, rating) =>
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                            setState(() {
                                              widget.employee.rank=rating;
                                            });

                                          },

                                        ),
                                         Text('${this.widget.employee.rank}', style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: large_font_size)),
                                        // const Icon(
                                        //     Icons.star, color: Colors.black,
                                        //     size: medium_padding),
                                      ],
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
                      alignment: Alignment.centerRight,
                      child: Padding
                        (
                        padding: const EdgeInsets.only(
                            right: small_padding * 1.5),
                        child: SizedBox.fromSize
                          (
                          size: const Size.fromRadius(54.0),
                          child:    CircleAvatar(
                            foregroundColor: Colors.red,
                            backgroundImage: AssetImage(widget.employee.profilePicUrl),
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
      );
}