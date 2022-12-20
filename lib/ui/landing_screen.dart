import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/ui/button_widget.dart';

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


          Wrap(
            children: [
              const Text('New to Resala?',

                softWrap: true,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'IBM',
                    fontWeight: FontWeight.w500
                ),),



              TextButton(
                onPressed: (){
                  const Register();
                },
                child: const Text('Sign up for free',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                    color: mainBlue,
                    fontFamily: 'IBM',
                    fontWeight: FontWeight.w500,

                  ),),
              ),
            ],
          ),


          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
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



          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: (){},
              child: const Text('Forgot Password?',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'IBM',
                  fontWeight: FontWeight.w500,
                  color: mainRed,
                ),),
            ),
          ),


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