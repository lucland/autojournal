import 'package:auto_journal/constants.dart';
import 'package:auto_journal/screens/signup_screen.dart';
import 'package:auto_journal/widgets/bottom_card.dart';
import 'package:auto_journal/widgets/top_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 23,
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        kTextFormFieldDecoration.copyWith(labelText: 'EMAIL'),
                    onChanged: (value) {},
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 23,
                    obscureText: true,
                    decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'PASSWORD'),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DarkCard(
                    text: 'Login',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BottomCard(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ),
                        );
                      },
                      text: 'Signup'),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => ResetPassword()));
                    },
                    child: Container(
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
