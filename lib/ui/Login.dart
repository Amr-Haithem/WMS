import 'package:flutter/material.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/constants/project_measures.dart';
import 'package:storage_management_system/ui/button_widget.dart';

import 'Donation_screen.dart';
import 'Register.dart';

const List<String> userTypes = <String>['Donator', 'Employee', 'Admin'];

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ishidden = true;
  String userTypeDropdownValue = userTypes.first;

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
                    fontSize: medium_font_size,
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
                    fontSize: medium_font_size,
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
                color:  mainBlue,
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

          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: mainBlue,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                  child: TextField(
                    obscureText: ishidden,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'IBM',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 26,
                top: 17,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      ishidden = !ishidden;
                    });
                  },
                  child: Image.asset(ishidden? 'assets/images/hidden.png':'assets/images/view.png',
                    scale: 25,
                  ),
                ),
              ),
            ],
          ),


          Center(
            child: TextButton(
              onPressed: (){},
              child: const Text('Forgot Password?',
                style: TextStyle(
                  fontSize: medium_font_size,
                  fontFamily: 'IBM',
                  fontWeight: FontWeight.w500,
                  color: mainRed,
                ),),
            ),
          ),

    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        const SizedBox(width: medium_padding*2),

        const Text ('Loging in as:   ',
        style: TextStyle(
          fontSize: medium_font_size,
          color: mainBlue,
        ),
        ),

        DropdownButton<String>(
          value: userTypeDropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          elevation: 16,
          style: const TextStyle(color: Colors.black54),
          underline: Container(
            height: 1,
            color: mainBlue,
          ),
          onChanged: (String? value) {
            //return selected userType
            setState(() {
              userTypeDropdownValue = value!;
            });
          },
          items: userTypes.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,),

            );
          }).toList(),
        ),
      ],
    ),


      ButtonWidget(
              text: 'Login',
              onClicked: () {
                  if (userTypeDropdownValue == 'Donator')
                  {
                  print ('logged in as Donator');

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DonationScreen()));
                  }
                else if (userTypeDropdownValue == 'Employee')
                  {
                    print ('logged in as Employee');
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmployeeScreen()));
                  }
                else
                  {
                    print ('logged in as Admin');
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdminScreen()));
                   }
              },

          ),

      SizedBox(height: screenHeight*0.0675,),
        ],
      ),
    );
  }
}