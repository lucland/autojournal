import 'package:flutter/material.dart';

class DarkCard extends StatelessWidget {
  DarkCard({required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        child: Material(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black,
          elevation: 0,
          child: Center(
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
