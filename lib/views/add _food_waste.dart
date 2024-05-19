import 'package:flutter/material.dart';
import 'package:swm1/assets/const.dart';

import '../component/com.dart';
import 'home_view.dart';

class Addfoodwaste extends StatelessWidget {
   Addfoodwaste({super.key});
  String? datetimeOfRec;
  String? timeOfRec;
  String? hospitalName;
  String? locationOfFarmersUnit;
  String? totalweight;
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
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 4.0, top: 8),
                    child: Text(
                      "ID of waste",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Stack(children: [
                    Container(
                      //color: Colors.white,
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 2),
                      child: Text(
                        "3186",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ])
                ],
              ),
              const SizedBox(
                height: 10,
              ),
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
                        height: 30,
                        width: 150,
                        child: TextF(
                          hinttext: '5/6/2024',
                          onChange: (data) {
                            datetimeOfRec = data;
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
                          "Time",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: TextF(
                          hinttext: '9:00',
                          onChange: (data) {
                            timeOfRec = data;
                          },
                          typ: TextInputType.datetime,
                        ),
                      ),
                    ],
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.maxFinite,
                    child: TextF(
                      onChange: (data) {
                        hospitalName = data;
                      },
                      typ: TextInputType.text,
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
                      "Total weight",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.maxFinite,
                    child: TextF(
                      onChange: (data) {
                        totalweight = data;
                        print("$totalweight");
                      },
                      typ: TextInputType.number,
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
                      "Location of farmers unit",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: double.maxFinite,
                    child: TextF(
                      onChange: (data) {
                        locationOfFarmersUnit = data;
                      },
                      typ: TextInputType.text,
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 30,
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
                  // fixedSize: const Size(250, 50),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}