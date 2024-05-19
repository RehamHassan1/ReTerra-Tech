import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swm1/views/search.dart';

import '../assets/const.dart';
import '../component/com.dart';
import 'home_view.dart';
import 'profile.dart';
import 'setting.dart';

class HospitalReportforFoodWaste extends StatefulWidget {
  const HospitalReportforFoodWaste({super.key});

  @override
  State<HospitalReportforFoodWaste> createState() => _HospitalReportforFoodWasteState();
}

class _HospitalReportforFoodWasteState extends State<HospitalReportforFoodWaste> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeView();
              }));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          "Add",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 4.0, top: 8),
                        child: Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: hi / 20,
                        width: wid / 3.5,
                        child: TextF(
                          hinttext: '5/6/2024',
                          onChange: (data) {
                            //datetimeOfRec = data;
                          },
                          typ: TextInputType.datetime,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 4.0, top: 8),
                        child: Text(
                          "Hospital Name",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: hi / 20,
                        width: wid / 2.5,
                        child: TextF(
                          onChange: (data) {
                            //datetimeOfRec = data;
                          },
                          typ: TextInputType.datetime,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: hi / 25,
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    // fixedSize: const Size(250, 50),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Show',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: hi / 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                  width: wid / 20,
                                  height: hi / 20,
                                  image: AssetImage(
                                      'lib/assets/images/calendar 1.png')),
                            ),
                            Text(
                              'Day: ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              'Sunday',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                  width: wid / 20,
                                  height: hi / 20,
                                  image: AssetImage(
                                      'lib/assets/images/calendar (3) 1.png')),
                            ),
                            Text(
                              'Date: ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              '5/5/2024',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                 // width: wid / 18,
                                  //height: hi / 18,
                                  image: AssetImage(
                                      'lib/assets/images/weight (2) 1.png')),
                            ),
                            Text(
                              'ID : ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              '1554',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                 // width: wid / 16,
                                  //height: hi / 16,
                                  image: AssetImage(
                                      'lib/assets/images/weight (2) 1.png')),
                            ),
                            Text(
                              'Total weight : ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              '10 Ton',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                  width: wid / 16,
                                  height: hi / 16,
                                  image: AssetImage(
                                      'lib/assets/images/itinerary 1.png')),
                            ),
                            Text(
                              'Location of farmers unit : ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              'Luxor Unit',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(
                                  width: wid / 16,
                                  height: hi / 16,
                                  image: AssetImage(
                                      'lib/assets/images/hospital_3063138.png')),
                            ),
                            Text(
                              'Hospital name : ',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: wid / 25),
                            ),
                            Text(
                              'Luxor Hospital',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: wid / 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
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
              icon: Icon(LineAwesomeIcons.search), label: 'Search'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.user_circle), label: 'Profile'),
          NavigationDestination(
              icon: Icon(LineAwesomeIcons.cog), label: 'Setting'),
        ],*/
      //),
    );
  }
}
