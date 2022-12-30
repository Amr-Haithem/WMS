import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import '../../constants/project_colors.dart';
import '../../model/model/category.dart';

class ItemCardWidget extends StatefulWidget {
  final Category category;
  final VoidCallback onClicked;

  ItemCardWidget({
    Key? key,
    required this.category,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                height: 200,
                width: 250,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: medium_padding),
                      child: Material(
                        elevation: small_padding,
                        borderRadius: BorderRadius.circular(small_padding),
                        shadowColor: mainOffWhite,
                        color: Colors.white,
                        child: InkWell(
                          //  onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(medium_padding),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '${widget.category.name}',
                                  style: const TextStyle(
                                      color: mainRed,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'IBM',
                                      fontSize: medium_font_size),
                                ),
                                const SizedBox(height: small_padding),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Material(
                                      elevation: small_padding / 5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(),
                                        onPressed: () {
                                          setState(() {
                                            if (widget.category.totalRoom > 0) {
                                              // widget.category.totalRoom--;
                                              // widget.category.busyRoom++;
                                            }
                                          });
                                        },
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: medium_font_size),
                                        ),
                                      ),
                                    ),
                                    Text(
                                        'Available: ${widget.category.totalRoom}',
                                        style: const TextStyle(
                                            color: mainBlue,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'IBM')),
                                    Material(
                                      elevation: small_padding / 5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(),
                                        onPressed: () {
                                          setState(() {
                                            if (widget.category.busyRoom > 0) {
                                              // widget.category.totalRoom++;
                                              // widget.category.busyRoom--;
                                            }
                                          });
                                        },
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: medium_font_size),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                //  const SizedBox(height: medium_padding),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Material(
                                      elevation: small_padding / 5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(),
                                        onPressed: () {
                                          setState(() {
                                            // widget.category.busyRoom > 0 ? widget.category.busyRoom-- : widget.category.busyRoom = widget.category.busyRoom;
                                          });
                                        },
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: medium_font_size),
                                        ),
                                      ),
                                    ),
                                    Text(
                                        'Room for: ${widget.category.busyRoom}',
                                        style: const TextStyle(
                                            color: mainBlue,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'IBM')),
                                    Material(
                                      elevation: small_padding / 5,
                                      shadowColor: mainBlue,
                                      shape: CircleBorder(),
                                      child: TextButton(
                                        style: const ButtonStyle(),
                                        onPressed: () {
                                          setState(() {
                                            // widget.category.busyRoom++;
                                          });
                                        },
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: medium_font_size),
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
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: small_padding * 1.5),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(40.0),
                          child: Material(
                              elevation: small_padding / 2,
                              shadowColor: mainBlue,
                              shape: const CircleBorder(),
                              child: Icon(
                                widget.category.iconName,
                                size: large_padding,
                                color: mainRed,
                              )),
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          /// Review
        ],
      );
}
