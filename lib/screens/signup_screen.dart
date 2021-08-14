import 'package:auto_journal/constants.dart';
import 'package:auto_journal/widgets/dark_card.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
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
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        kTextFormFieldDecoration.copyWith(labelText: 'EMAIL'),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: kTextFormFieldDecoration.copyWith(
                        labelText: 'PASSWORD'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DarkCard(
                    text: 'Signup',
                    onTap: () {},
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
