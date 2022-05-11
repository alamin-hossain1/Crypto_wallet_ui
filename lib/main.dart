import 'package:flutter/material.dart';
import 'package:wallet_crypto/pages/content.dart';
import 'package:wallet_crypto/pages/homepage.dart';
import 'package:wallet_crypto/pages/profile.dart';
import 'package:wallet_crypto/pages/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
