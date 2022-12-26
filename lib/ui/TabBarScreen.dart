import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';

import 'Login.dart';
import 'Register.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: mainBlue,
              title: const Text('Resala Storage Centers'),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.login), text: "Login"),
                  Tab(icon: Icon(Icons.app_registration), text: "Register"),
                ],
              ),
            ),



            //The below block of code is Adham's design for authentication screen
            // Stack(
            // children: [
            //   Container(
            //     decoration: const BoxDecoration(
            //       color: mainOffWhite,
            //       ),
            //     child: Padding(
            //       padding: EdgeInsets.only(top: screenHeight*0.135, left: screenHeight*0.1, right: screenHeight*0.1, bottom: screenHeight*0.0675),
            //       child:  const DefaultTabController(
            //         length: 2,
            //         child: Scaffold(
            //           appBar: TabBar(
            //               tabs: [
            //                 Padding(
            //                   padding: EdgeInsets.symmetric(vertical: 7),
            //                   child: Text('Log in',
            //                   style: TextStyle(
            //                     color: mainBlue,
            //                     fontSize: 20,
            //                     fontFamily: 'IBM',
            //                   ),),
            //                 ),
            //                 Padding(
            //                   padding: EdgeInsets.symmetric(vertical: 7),
            //                   child: Text('Register',
            //                   style: TextStyle(
            //                     color: mainBlue,
            //                     fontSize: 20,
            //                     fontFamily: 'IBM',
            //                   ),),
            //                 )
            //               ],
            //             ),

            body:
            Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            opacity: 0.1,
            image: AssetImage("assets/images/Resala.jpeg"),
            // fit: BoxFit.cover,
          ),
        ),
            child: const TabBarView(
              children: [
                Login(),
                Register(),
              ],
            ),
          ),
        ),
        //   ),
        // ),
        ),
      ),
    );
  }
}
