import 'package:flutter/material.dart';
import 'package:login_ui/Screens/register/register.dart';
import 'package:login_ui/components/background.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
       return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[