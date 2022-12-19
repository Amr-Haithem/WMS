import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ishidden = true;
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
                onPressed: (){},
                child: const Text('Sign up for free',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'IBM',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFDA8F12),
                  ),),
              )
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

          Stack(
            children: [
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

          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: (){},
              child: const Text('Forgot Password?',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'IBM',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFDA8F12),
                ),),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: TextButton(

                  onPressed: () {  },

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF0F62FE)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 1, color: Color(0xFF0F62FE)),
                      ),
                    ),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    child: Text('Login',
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: screenHeight*0.0675,),

        ],
      ),
    );
  }
}