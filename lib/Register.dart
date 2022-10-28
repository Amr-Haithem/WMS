 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          Text('Registration',
          softWrap: true,
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'IBM',
            fontWeight: FontWeight.w600,
          ),
          ),

          SizedBox(height: 5,),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
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
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
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

          SizedBox(height: 10,),

          Row(
            children: [
              Expanded(
                child: TextButton(
                  
                  onPressed: () {  },

                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    child: Text('Register',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),),
                  ),

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF0F62FE)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 1, color: Color(0xFF0F62FE)),
                      ),
                    ),
                  ),
                  ),
              ),
            ],
          ),

          SizedBox(height: 30,),

        ],
      ),
    );
  }
}