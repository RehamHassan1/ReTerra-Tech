import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/home_view.dart';
import 'package:swm1/views/setting.dart';

import '../assets/const.dart';
import 'profile.dart';
import 'search.dart';

class Help_Page extends StatefulWidget {
  const Help_Page({super.key});

  @override
  State<Help_Page> createState() => _Help_PageState();
}

class _Help_PageState extends State<Help_Page> {
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
        title: Text("Help", style: Theme.of(context).textTheme.headline4),
      ),
      body:
        SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "- You can use our application in a very easy way, which is by logging in, and if it is your first time using our application, you can choose to register as a supervisor or as a administrator, and then fill out some data, and thus you will have been successfully registered on our application.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "- If you are an supervisor, you can add your report easily by using the add button at the bottom or in another way, which is by choosing the type of waste you want to submit a report and adding the report with ease.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "- If you are a administrator, you can display the reports for the governorate you want to see in the form of a simple post.",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
     /*  SearchScreen(),
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
              icon: Icon(LineAwesomeIcons.plus_circle), label: 'Add'),
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
