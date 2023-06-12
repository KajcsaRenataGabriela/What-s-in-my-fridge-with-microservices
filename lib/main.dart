import 'package:data_operations_service/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyMainApp());
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({Key? key}) : super(key: key);

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
