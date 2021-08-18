import 'package:auto_journal/constants.dart';
import 'package:auto_journal/widgets/bottom_card.dart';
import 'package:auto_journal/widgets/top_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                    obscureText: true,
                    cursorColor: Colors.black,
                    cursorHeight: 23,
                    decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'PASSWORD'),
                    onChanged: (value) {},
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    cursorHeight: 23,
                    decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'CONFIRM PASSWORD'),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DarkCard(
                    text: 'Signup',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BottomCard(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: 'Go back'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
