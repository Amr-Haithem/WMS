import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:storage_management_system/data/sink/user_sink.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String email;
  late String userFullName;
  late String phoneNumber;
  late String address;
  late String password;
  UserSink userSink = UserSink();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.275),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Registration',
            softWrap: true,
            style: TextStyle(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the user name';
                  }
                  return null;
                },
                onChanged: ((value) {
                  setState(() {
                    userFullName = value;
                  });
                }),
                decoration: const InputDecoration(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the user email';
                  }
                  return null;
                },
                onChanged: ((value) {
                  setState(() {
                    email = value;
                  });
                }),
                decoration: const InputDecoration(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the user password';
                  }
                  return null;
                },
                onChanged: ((value) {
                  setState(() {
                    password = value;
                  });
                }),
                obscureText: true,
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
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the user phone number';
                  }
                  return null;
                },
                onChanged: ((value) {
                  setState(() {
                    phoneNumber = value;
                  });
                }),
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'phone number',
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your the user address';
                  }
                  return null;
                },
                onChanged: ((value) {
                  setState(() {
                    address = value;
                  });
                }),
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'address',
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
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    if (!(email.isEmpty ||
                        userFullName.isEmpty ||
                        phoneNumber.isEmpty ||
                        address.isEmpty ||
                        password.isEmpty)) {
                      userSink.setAUser(
                          email, userFullName, phoneNumber, address, password);
                      print("registered a user");
                    } else {
                      print("didn't register, fillout all data");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF0F62FE)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                            width: 1, color: Color(0xFF0F62FE)),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    child: Text(
                      'Register',
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
