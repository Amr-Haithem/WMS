import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/controller/categories/categories/categories_cubit.dart';
import 'package:storage_management_system/controller/donation/donation_cubit.dart';
import 'package:storage_management_system/model/model/donator.dart';
import 'package:uuid/uuid.dart';
import '../../model/model/category.dart';
import '../../model/model/receipt.dart';
import '../frequently_used_widgets/ButtonWidget.dart';
import 'DonationWidget.dart';

const List<String> donatedItemCategories = <String>[
  'clothes',
  'electronics',
  'paper',
  'furniture',
  'other'
];
const List<String> areas = <String>[
  'Nasr City',
  'Maadi',
  '6 October',
  'Giza',
  'Haram'
];

class DonationScreen extends StatefulWidget {
  final Donator donator;
  const DonationScreen({super.key, required this.donator});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  late List<Category> categories;
  String donatedItemDropdownValue = donatedItemCategories.first;
  String areaDropdownValue = areas.first;
  final ScrollController _scrollController = ScrollController();

  scrollToBottom() async {
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent,
      ),
    );
  }

  late String address;
  @override
  void initState() {
    BlocProvider.of<CategoriesCubit>(context).getCategoriesFromDB();
    address = widget.donator.address;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return BlocListener<DonationCubit, DonationState>(
      listener: (context, state) {
        if (state is DonationAdded) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Donation added')));
          Navigator.pop(context);
        } else if (state is DonationError) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Error in contacting the database')));
        }
      },
      child: SafeArea(
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: mainBlue,
              title: const Text('Make a donation'),
              centerTitle: true,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.1,
                  image: AssetImage("assets/images/Resala.jpeg"),
                  // fit: BoxFit.cover,
                ),
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Center(
                      child: Text(
                        "Even your smallest gifts can make a huge impact.\n"
                        "Thank you for your donations",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: mainBlue,
                          fontSize: 15,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 50),
                        const Text('Area:   '),
                        DropdownButton<String>(
                          value: areaDropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black54),
                          underline: Container(
                            height: 1,
                            color: underlineColor,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              areaDropdownValue = value!;
                            });
                          },
                          items: areas
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),

                    //address
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: medium_padding * 2, vertical: 2),
                      child: TextField(
                        onChanged: (val) {
                          address = val;
                        },
                        decoration: const InputDecoration(
                          label: Text('Detailed address'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underlineColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),

                    BlocBuilder<CategoriesCubit, CategoriesState>(
                      builder: (context, state) {
                        if (state is CategoriesLoaded) {
                          categories = state.categories;
                          print(categories);
                          print("categories begotten");
                          return Column(
                            children: List.generate(
                                categories.length,
                                (index) => DonationWidget(
                                      onChanged: (isAdding) {
                                        // print(categories[index].busyRoom);
                                        // print(state.categories[index].busyRoom);
                                        // print("meow");
                                        isAdding
                                            ? categories[index].busyRoom++
                                            : categories[index].busyRoom--;
                                      },
                                      category: state.categories[index],
                                    )),
                          );
                        } else if (state is CategoriesError) {
                          return const Center(child: Text("Error"));
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),

                    ButtonWidget(
                      text: 'Submit',
                      onClicked: () {
                        print("whaaaat");
                        if (categories != null && categories.isNotEmpty) {
                          BlocProvider.of<DonationCubit>(context)
                              .addNewDonationToDB(Receipt(
                            id: const Uuid().v1(),
                            donationDate: DateTime.now(),
                            address: address,
                            donator: widget.donator,
                            newCategoriesWithNewValues: categories,
                          ));
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
