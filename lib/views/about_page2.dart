import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/about_page.dart';
import 'package:swm1/views/home_view.dart';
import 'package:swm1/views/search.dart';

import '../assets/const.dart';
import 'about_page3.dart';
import 'profile.dart';
import 'setting.dart';

class AboutPage2 extends StatefulWidget {
  const AboutPage2({super.key});

  @override
  State<AboutPage2> createState() => _AboutPage2State();
}

class _AboutPage2State extends State<AboutPage2> {
      int index = 0;

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
                return const AboutPage();
              }));            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("About", style: Theme.of(context).textTheme.headline4),
      ),
      body: 
        SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Image(
                  image: AssetImage(
                      "lib/assets/images/4575620-removebg-preview 1.png")),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Smart waste management app is here for you , If you're interested in working your way towards a more sustainable lifestyle , Get creative with your waste items and find new uses for them or dispose of it if it is hazardous waste . Don't worry we'll do it for you.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              IconButton(
                icon: const Icon(
                  color: Colors.black,
                  LineAwesomeIcons.angle_double_right,
                  size: 30,
                ),
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AboutPage3();
                  }));
                },
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
      /* SearchScreen(),
        ProfileScreen(),
        Setting_Page()
      ][index],
             bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: index,
        animationDuration: Duration(milliseconds: 1000),
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.plus_circle), label: 'About'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.search), label: 'Search'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.user_circle), label: 'Profile'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.cog), label: 'Setting'),
        ],
      ),*/
    );
  }
}
