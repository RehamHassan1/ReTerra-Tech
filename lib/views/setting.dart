import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/assets/const.dart';
import 'package:swm1/views/about_page.dart';
import 'package:swm1/views/home_view.dart';
import 'package:swm1/views/update_profile.dart';

import 'Help.dart';
import 'profile.dart';

class Setting_Page extends StatelessWidget {
  const Setting_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeView();
                }),
              );            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("Setting", style: Theme.of(context).textTheme.headline4),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfileScreen();
                  }));
                },
                child: Row(
                  children: [
                    Icon(
                      LineAwesomeIcons.user_circle,
                      size: 40,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(color: Colors.white, thickness: 2, height: 2),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Help_Page();
                  }));
                },
                child: Row(
                  children: [
                    Icon(
                      LineAwesomeIcons.question_circle,
                      size: 40,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(color: Colors.white, thickness: 2, height: 2),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AboutPage();
                  }));
                },
                child: Row(
                  children: [
                    Icon(
                      LineAwesomeIcons.info_circle,
                      size: 40,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'About',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                )),
                
          ],
        ),
      ),
    );
  }
}
