import 'package:auto_journal/constants.dart';import 'package:auto_journal/widgets/bottom_card.dart';import 'package:auto_journal/widgets/top_card.dart';import 'package:auto_journal/services/authservice.dart';import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';class Signup extends StatefulWidget {  @override  _SignupState createState() => _SignupState();}class _SignupState extends State<Signup> {  final TextEditingController _emailController = TextEditingController();  final TextEditingController _passController = TextEditingController();  final TextEditingController _confirmpassController = TextEditingController();  final _formKey = new GlobalKey<FormState>();  bool _validate(String val) {    return RegExp(Constants.EMAILPATTERN).hasMatch(val);  }  @override  Widget build(BuildContext context) {    //final size = MediaQuery.of(context).size;    return Scaffold(      backgroundColor: Colors.grey.shade200,      body: Center(        child: Form(            key: _formKey,            child: Padding(              padding: const EdgeInsets.symmetric(horizontal: 10),              child: Column(                mainAxisAlignment: MainAxisAlignment.spaceEvenly,                children: [                  Column(                    children: [                      TextFormField(                          cursorColor: Colors.black,                          cursorHeight: 23,                          keyboardType: TextInputType.emailAddress,                          decoration: kTextFormFieldDecoration.copyWith(                              labelText: 'EMAIL'),                          controller: _emailController,                          validator: (val) {                            if (_validate(val!)) {                              return null;                            } else                              return "A valid email is required";                          }),                      TextFormField(                          obscureText: true,                          cursorColor: Colors.black,                          cursorHeight: 23,                          decoration: kTextFormFieldDecoration.copyWith(                              labelText: 'PASSWORD'),                          controller: _passController,                          validator: (val) {                            if (val!.isEmpty) {                              return "Please enter new password";                            } else if (val.length < 8) {                              return "Password must be at least 8 characters long";                            } else {                              return null;                            }                          }),                      TextFormField(                        obscureText: true,                        cursorColor: Colors.black,                        cursorHeight: 23,                        decoration: kTextFormFieldDecoration.copyWith(                            labelText: 'CONFIRM PASSWORD'),                        controller: _confirmpassController,                        validator: (val) {                          if (val!.isEmpty) {                            return "Please re-enter new password";                          } else if (val.length < 8) {                            return "Password must be at least 8 characters long";                          } else if (val != _passController.text) {                            return "Password must be same as above";                          } else {                            return null;                          }                        },                      ),                      SizedBox(                        height: 20,                      ),                      DarkCard(                          text: 'Signup',                          onTap: () async {                            if (!_formKey.currentState!.validate()) {                              return;                            }                            await AuthService().signUp(                              _emailController.text,                              _passController.text,                            );                            Navigator.pop(context);                          }),                      SizedBox(                        height: 10,                      ),                      BottomCard(                          onTap: () {                            Navigator.pop(context);                          },                          text: 'Go back'),                    ],                  ),                ],              ),            )),      ),    );  }}