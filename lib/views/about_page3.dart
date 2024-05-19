import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/about_page2.dart';

import '../assets/const.dart';

class AboutPage3 extends StatefulWidget {
  const AboutPage3({super.key});

  @override
  State<AboutPage3> createState() => _AboutPage3State();
}

class _AboutPage3State extends State<AboutPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutPage2();
              }));
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("About", style: Theme.of(context).textTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Image(
                  image: AssetImage(
                      "lib/assets/images/Free_Vector___Recycle_symbol_environmental_conservation_vector-removebg-preview 1.png")),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "There is another type of waste, which is organic waste, and this is recycled to be used as organic fertilizer for farmers and to preserve the environment as well.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
