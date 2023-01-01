import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_management_system/constants/project_colors.dart';
import 'package:storage_management_system/controller/authentication/authentication_cubit.dart';

import 'donation_screen/DonationScreen.dart';
import 'frequently_used_widgets/ButtonWidget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String name;
  late String email;
  late String address;
  late String phoneNumber;
  late String password;
  final _formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.275),
      child: Form(
        key: _formGlobalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Registration',
              softWrap: true,
              style: TextStyle(
                color: mainBlue,
                fontSize: 30,
                fontFamily: 'IBM',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: bordersColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid value";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) => setState(() {
                    name = value;
                  }),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid value";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    email = value;
                  }),
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid value";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    phoneNumber = value;
                  }),
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone number',
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid value";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    address = value;
                  }),
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Address',
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid value";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    password = value;
                  }),
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
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Register',
              onClicked: () {
                if (_formGlobalKey.currentState!.validate()) {
                  BlocProvider.of<AuthenticationCubit>(context)
                      .registerDonatorWithEmailAndPassword(
                          name, email, address, phoneNumber, password);
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
