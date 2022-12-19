import 'package:flutter/material.dart';

import 'Donation_screen.dart';
import 'Register.dart';


class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 233, 233, 233),
            ),
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight*0.135, left: screenHeight*0.1, right: screenHeight*0.1, bottom: screenHeight*0.0675),
            child: const DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: TabBar(
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Text('Log in',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'IBM',
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Text('Register',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'IBM',
                        ),),
                      )
                    ],
                  ),

                  body: TabBarView(
                    children: [
                      Login(),
                      Register(),
                    ],
                  ),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 10, left: screenHeight*0.1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset('assets/images/logo.jpg',
            width: screenWidth*0.115,
            height: screenHeight*0.115,),
          ),
        ),
      ],
    );
  }
}