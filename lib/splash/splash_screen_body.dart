import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:swm1/views/home_view.dart';

import '../login/login_view.dart';
import '../views/show_report_body.dart';

class SplashScreenbody extends StatefulWidget {
  const SplashScreenbody({super.key});

  @override
  State<SplashScreenbody> createState() => _SplashScreenbodyState();
}

class _SplashScreenbodyState extends State<SplashScreenbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomRight,
        secondaryBegin: Alignment.bottomRight,
        secondaryEnd: Alignment.bottomRight,
        primaryColors: const [
          // Color(0x0F969C),
          //   Color(0x0F969C),
          Color(0xff0F969C),
          Colors.white,
          Colors.white,
        ],
        secondaryColors: const [
          //Color(0x0F969C),
          // Colors.white,
          Colors.white,
          Colors.white,
          Color(0xff0F969C),
        ],
        child: Center(
          child: GestureDetector(
            onTap: () {
             /* Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const Scaffold();
              }));
              */
            },
            child: Column(children: [
              const Image(
                  image: AssetImage(
                      'lib/assets/images/LOGOO__3_-removebg-preview 1.png')),
              const SizedBox(
                height: 150,
              ),
              OutlinedButton(
                onPressed: () {
                  /*
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginView();
                  }));*/
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  HomeView();
                  }));
                },
                style: OutlinedButton.styleFrom(
                 // backgroundColor: const Color(0xff0C7075),
                  fixedSize: const Size(250, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                     side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black87,fontSize: 25),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
