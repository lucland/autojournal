import 'package:auto_journal/constants.dart';
import 'package:auto_journal/screens/reset_screen.dart';
import 'package:auto_journal/screens/signup_screen.dart';
import 'package:auto_journal/services/authservice.dart';
import 'package:auto_journal/widgets/bottom_card.dart';
import 'package:auto_journal/widgets/top_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            return "Email is required";
                          } else if (_validate(val)) {
                            return null;
                          } else
                            return "Invalid email";
                        }),
                    TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 23,
                      obscureText: true,
                      decoration: kTextFormFieldDecoration.copyWith(
                          labelText: 'PASSWORD'),
                      controller: _passwordController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter password";
                        } else if (val.length < 8) {
                          return "Invalid password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DarkCard(
                      text: 'Login',
                      onTap: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        await AuthService().signIn(_emailController.text,
                            _passwordController.text, context);
                      },
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResetPassScreen()));
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
      ),
    );
  }
}
