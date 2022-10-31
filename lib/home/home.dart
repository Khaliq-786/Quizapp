import 'package:flutter/material.dart';
import 'package:quizapp/shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Khana dedo'),
          onPressed: () => Navigator.pushNamed(context, '/about'),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}