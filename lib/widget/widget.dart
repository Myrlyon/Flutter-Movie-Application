import 'package:flutter/material.dart';

Widget myText(String label, bool isObsecure) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: TextField(
      obscureText: isObsecure,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
      ),
    ),
  );
}
