import 'package:flutter/material.dart';
import 'package:shop_app/screens/authenticate/authenticate.dart';
import 'package:shop_app/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    // return either the Home or Authenticate widget
    return Authenticate();
  }
}