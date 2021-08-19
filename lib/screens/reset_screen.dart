import 'package:auto_journal/constants.dart';
import 'package:auto_journal/widgets/bottom_card.dart';
import 'package:auto_journal/widgets/top_card.dart';
import 'package:auto_journal/services/authservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassScreen extends StatefulWidget {
  @override
  _ResetPassScreenState createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final TextEditingController _emailController = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  bool _validate(String val) {
    return RegExp(Constants.EMAILPATTERN).hasMatch(val);
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Form(
          key: _formKey,
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
                        decoration: kTextFormFieldDecoration.copyWith(
                            labelText: 'EMAIL'),
                        controller: _emailController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Email";
                          } else if (_validate(val)) {
                            return null;
                          } else
                            return "Invalid email";
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    DarkCard(
                        text: 'Send request',
                        onTap: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          await AuthService()
                              .resetPasswordLink(_emailController.text);
                        }),
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
      ),
    );
  }
}
