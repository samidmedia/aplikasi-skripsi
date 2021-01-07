import 'package:flutter/material.dart';
import 'package:adacatering/pages/FoodDetailsPage.dart';
import 'package:adacatering/pages/FoodOrderPage.dart';
import 'package:adacatering/pages/HomePage.dart';
import 'package:adacatering/pages/SignInPage.dart';
import 'package:adacatering/pages/SignUpPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: SignInPage(),
    ));
