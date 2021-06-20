import 'package:flutter/material.dart';

class InputText extends TextField {
  InputText({Key? key, hintText, labelText, obscureText, controller}) :
  super(
    controller: controller,
    obscureText: obscureText,
    decoration: InputDecoration(
    hintText: hintText,
    labelText: labelText,
    border: OutlineInputBorder(),
  ));
}