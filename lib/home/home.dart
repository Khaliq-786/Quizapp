import 'package:flutter/material.dart';
import 'package:quizapp/services/auth.dart';
import 'package:quizapp/shared/bottom_nav.dart';
import 'package:quizapp/topics/topics.dart';
import 'package:quizapp/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('loading');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return const TopicScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
