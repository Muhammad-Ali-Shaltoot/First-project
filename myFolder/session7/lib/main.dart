import 'package:flutter/material.dart';
import 'package:session7/BuiltInProject/counter.dart';
import 'package:session7/PasswordValidation/password.dart';
import 'package:session7/Xo%20Flolder/xo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PasswordScreen(),
    );
  }
}

