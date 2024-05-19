import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/home_view.dart';
import 'package:swm1/views/setting.dart';

import '../assets/const.dart';
import 'about_page2.dart';
import 'profile.dart';
import 'search.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                return const Setting_Page();
              }));
            },
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
                      "lib/assets/images/Blog-Header-Biohaz-Waste-and-the-Environment-removebg-preview 1.png")),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Many medical waste issues have negative consequences on our quality of life and health; Here comes our rule to help you maintain your health and limit the spread of dangerous or infectious diseases. We also help you have an environmental impact and feel satisfied with it.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              IconButton(
                icon: const Icon(color: Colors.black,LineAwesomeIcons.angle_double_right,size: 30,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AboutPage2();
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
