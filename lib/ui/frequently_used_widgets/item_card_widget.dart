import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/data/model/category.dart';

import '../../constants/project_colors.dart';


class ItemCardWidget extends StatefulWidget {
  final DonatedItemCategory donatedItemCategory;
  final VoidCallback onClicked;
  final IconData iconName;

  const ItemCardWidget({
    Key? key,
    required this.donatedItemCategory,
    required this.onClicked,
    required this.iconName,
  }) : super(key: key);

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  @override
  Widget build(BuildContext context) =>
      Stack
        (
        children: <Widget>
        [

          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox
              (
                height: 200,
                width: 250,
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
                                  .spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [

                                Text('${widget.donatedItemCategory.name}', style: const TextStyle(
                                    color: mainRed,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'IBM',
                                fontSize: medium_font_size),
                                ),
                                const SizedBox(height: small_padding),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Material
                                      (
                                      elevation: small_padding/5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if ( widget.donatedItemCategory.numAvailable > 0 ) {
                                                widget.donatedItemCategory.numAvailable--;
                                                widget.donatedItemCategory.emptyRoomFor++;
                                            }
                                          });
                                        }, child: const Text('-', style: TextStyle(color: Colors.black, fontSize: medium_font_size),),
                                      ),
                                    ),


                                    Text('Available: ${widget.donatedItemCategory.numAvailable}', style: const TextStyle(
                                        color: mainBlue,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'IBM')),

                                    Material
                                      (
                                      elevation: small_padding/5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (widget.donatedItemCategory.emptyRoomFor > 0) {
                                              widget.donatedItemCategory.numAvailable++;
                                              widget.donatedItemCategory.emptyRoomFor--;
                                            }
                                          });
                                        }, child: const Text('+', style: TextStyle(color: Colors.black, fontSize: medium_font_size),),
                                      ),
                                    ),

                                  ],
                                ),


                              //  const SizedBox(height: medium_padding),



                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                 Material
                                  (
                                    elevation: small_padding/5,
                                    shadowColor: mainBlue,
                                    shape: CircleBorder(),
                                    child: TextButton(
                                      style: const ButtonStyle(
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          widget.donatedItemCategory.emptyRoomFor > 0 ? widget.donatedItemCategory.emptyRoomFor-- : widget.donatedItemCategory.emptyRoomFor = widget.donatedItemCategory.emptyRoomFor;
                                        });
                                      }, child: const Text('-', style: TextStyle(color: Colors.black, fontSize: medium_font_size),),
                                    ),
                                ),


                                Text('Room for: ${widget.donatedItemCategory.emptyRoomFor}', style: const TextStyle(
                                    color: mainBlue,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'IBM')),

                                Material
                                  (
                                  elevation: small_padding/5,
                                  shadowColor: mainBlue,
                                  shape: CircleBorder(),
                                  child: TextButton(
                                    style: const ButtonStyle(
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        widget.donatedItemCategory.emptyRoomFor++;
                                      });
                                    }, child: const Text('+', style: TextStyle(color: Colors.black, fontSize: medium_font_size),),
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
                        padding: const EdgeInsets.only(
                            right: small_padding * 1.5),
                        child: SizedBox.fromSize
                          (
                          size: const Size.fromRadius(40.0),
                          child:  Material
                            (

                            elevation: small_padding/2,
                            shadowColor: mainBlue,
                            shape: CircleBorder(),
                            child: Icon(
                              widget.iconName,
                              size: large_padding,
                              color: mainRed,
                            )
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