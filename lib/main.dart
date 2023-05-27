import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whats_in_my_fridge_app/project/authentication-service/src/auth_main.dart';
import 'package:whats_in_my_fridge_app/project/data-operations-service/src/fridge_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyMainApp());
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyAuthApp(),
        '/fridge': (context) => const MyDataApp(),
        // Other routes...
      },
    );
  }
}
