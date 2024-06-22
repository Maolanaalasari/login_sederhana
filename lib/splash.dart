// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/auth/login.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/widgets/widgets.dart';

// ignore: duplicate_import
import 'screens/home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    checkUserSementara(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wApploading(),
    );
  }

  void checkUserSementara(bool user) async {
    await Future.delayed(
      Duration(seconds: 5),
    );

    // Mengganti `?` dengan kondisi ternary yang benar
    Navigator.pushReplacement(
        context,
        // ignore: prefer_const_constructors
        MaterialPageRoute(builder: (context) => user ? Home() : Login()));
  }

  Home() {}
}
