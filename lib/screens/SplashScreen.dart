import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/ColorUtility.dart';
import '../utility/TextUtility.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              // color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: CU.background,
              ),
            ),
            child: Padding(
              //padding: EdgeInsets.fromLTRB(68, 98, right, bottom)
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 400,
                      child: CircleAvatar(
                        //radius: 40,
                        backgroundColor: const Color(0x004599f4),
                        child: Image.asset('assets/images/EZRB.png'),
                      ),
                    ).paddingOnly(top: 200),
                    const Text(
                      CT.splashTxt,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ).paddingOnly(top: 90, bottom: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
