import 'package:auto_journal/constants.dart';
import 'package:auto_journal/screens/signup_screen.dart';
import 'package:auto_journal/widgets/dark_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    cursorHeight: 23,
                    obscureText: true,
                    decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'PASSWORD'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to AutoJornal ?'),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Trueno',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
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
