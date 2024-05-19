import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/profile.dart';
import 'package:swm1/views/setting.dart';

import '../views/home_view.dart';
import '../views/search.dart';

class NavigatinBar1 extends StatefulWidget {
  NavigatinBar1({super.key});

  @override
  State<NavigatinBar1> createState() => _NavigatinBar1State();
}

class _NavigatinBar1State extends State<NavigatinBar1> {
  int index = 0;
  final pages = [
    HomeView(),
    Center(
      child: Text('p2'),
    ),
    SearchScreen(),
    ProfileScreen(),
    Setting_Page()
  ];
  /*void onTap(int ind) {
    setState(() {
      index = ind;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        animationDuration: Duration(milliseconds: 1000),
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.plus_circle), label: 'Add'),
          NavigationDestination(
            icon: Icon(LineAwesomeIcons.search),
            label: 'Search',
          ),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.user_circle), label: 'Profile'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.cog), label: 'Setting'),
        ],
      ),
    );
  }
}

/*
 BottomNavigationBar(
          elevation: 0,
          onTap: onTap,
          currentIndex :index,
        items:
         <BottomNavigationBarItem>
      [
        BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.home), label: 'Home'),
                 BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.plus_circle), label: 'Add'),
                 BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.search), label: 'Search'),
                 BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.user_circle), label: 'Profile'),
                 BottomNavigationBarItem(
               icon: Icon(LineAwesomeIcons.cog), label: 'Setting'),
                
      ],)
 */