import 'package:flutter/material.dart';
import 'package:storage_management_system/Register.dart';

import 'Login.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 233, 233),
            ),
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 80, right: 80, bottom: 50),
            child: DefaultTabController(
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
          padding: EdgeInsets.only(top: 10, left: 80),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset('assets/images/logo.jpg',
            scale: 5,),
          ),
        ),
      ],
    );
  }
}