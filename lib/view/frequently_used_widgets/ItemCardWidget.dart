import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/controller/categories/categories_edit/edit_categories_cubit.dart';
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
  late int available;
  late int totalRoom;
  @override
  void initState() {
    available = widget.category.totalRoom - widget.category.busyRoom;
    totalRoom = widget.category.totalRoom;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                                        if (available > 0) {
                                          setState(() {
                                            available--;
                                          });
                                        }
                                      },
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: medium_font_size),
                                      ),
                                    ),
                                  ),
                                  Text('Available: ${available}',
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
                                        if (available < totalRoom) {
                                          setState(() {
                                            available++;
                                          });
                                        }
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
                                        if (totalRoom > 0) {
                                          setState(() {
                                            totalRoom--;
                                          });

                                          if (available > totalRoom) {
                                            available = totalRoom;
                                          }
                                        }
                                      },
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: medium_font_size),
                                      ),
                                    ),
                                  ),
                                  Text('Total Room ${totalRoom}',
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
                                          totalRoom++;
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
                              (totalRoom != widget.category.totalRoom ||
                                      available !=
                                          (widget.category.totalRoom -
                                              widget.category.busyRoom))
                                  ? Center(
                                      child: Container(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              BlocProvider.of<
                                                          EditCategoriesCubit>(
                                                      context)
                                                  .setNewCategoryValues(
                                                      widget.category.id,
                                                      totalRoom - available,
                                                      totalRoom);
                                            },
                                            child: Text("confirm changes")),
                                      ),
                                    )
                                  : SizedBox()
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
}
