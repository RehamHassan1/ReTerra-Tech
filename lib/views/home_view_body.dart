
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/add_medical_waste_view.dart';
import 'package:swm1/views/hospital_report.dart';
import 'package:swm1/views/search.dart';

import '../assets/const.dart';
import 'home_view.dart';
import 'profile.dart';
import 'setting.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
   int index = 0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                backgroundColor: primaryColor,

      body: [SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
         children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Image(
                  
                  image: AssetImage('lib/assets/images/bro.png')),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What type of waste ?",
                
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {
                                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AddMedicalWasteView();
                    }));  
                  
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(250, 50),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Medical waste',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               OutlinedButton(
                onPressed: () {
                  /*       Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginView();
                    }));  */
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(250, 50),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Food waste',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
              ),
              SizedBox(height: 40,),
              
            ]
          ),
        ),
        
      ),
        HospitalReport(),
        SearchScreen(),
        ProfileScreen(),
        Setting_Page()
      ][index],
      
       bottomNavigationBar:  NavigationBar(
        
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
      ),
    );
  }
}

