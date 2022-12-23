import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/ui/frequently_used_widgets/button_widget.dart';

import 'Donation_screen.dart';
import 'Register.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.275),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [



          ButtonWidget(
                  text: 'Login',
                  onClicked: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DonationScreen()));
                },
              ),


          SizedBox(height: screenHeight*0.0675,),

        ],
      ),
    );
  }
}