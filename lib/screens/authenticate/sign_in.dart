import 'package:flutter/material.dart';
import 'package:shop_app/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Sign in to Shop App'),
      ),
      body: 
      Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(onPressed: () async {
          dynamic result = await _auth.signInAnon();
          if (result == null){
            print('error signing in');
          }
          else{
            print('signed in');
            print(result.uid);
          }
        }, child: Center(child: const Text('Sign in anon'))),
    ));
  }
}