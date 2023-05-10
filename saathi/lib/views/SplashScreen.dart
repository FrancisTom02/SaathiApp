import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saathi/views/CreateProfile1.dart';
import 'package:saathi/views/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadingPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 165, 145, 1),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Image(image: AssetImage('asset/Splash.png'))),
      ),
    );
  }

  Future<void> LoadingPage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => LoginPage()));
  }
}
