import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('Bana rakha hai'),
          onPressed: () => Navigator.pushNamed(context, '/'),
          ),
      ),
    );
  }
}