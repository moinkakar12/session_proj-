import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account Page'), backgroundColor: Colors.pink),
      body: Center(
        child: Text('Welcome to your Account!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
