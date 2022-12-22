import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';

import 'Donation_screen.dart';
import 'frequently_used_widgets/button_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.275),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Registration',

            softWrap: true,

            style: TextStyle(
              color: mainBlue,
              fontSize: 30,
              fontFamily: 'IBM',
              fontWeight: FontWeight.w600,
            ),

          ),

          const SizedBox(height: 5,),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: bordersColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    fontFamily: 'IBM',
                  ),
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: bordersColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    fontFamily: 'IBM',
                  ),
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: bordersColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontFamily: 'IBM',
                  ),
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: bordersColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    fontFamily: 'IBM',
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10,),

          ButtonWidget(
            text: 'Register',
            onClicked: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DonationScreen()));
            },

          ),

          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}