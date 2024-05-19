import 'package:flutter/material.dart';

import '../assets/const.dart';
import '../component/com.dart';
import 'home_view.dart';

class AddHospitalBody extends StatefulWidget {
  const AddHospitalBody({super.key});

  @override
  State<AddHospitalBody> createState() => _AddHospitalBodyState();
}

class _AddHospitalBodyState extends State<AddHospitalBody>
    with TickerProviderStateMixin {
  String? supervisorNameOfhelth;
  String? healthunitmanagerName;
  String? hospitalmanagerName;
  String? supervisorNameOfhospital;
  String? hospitallocation;
  String? hospitalName;
  String? healthunitlocation;
  String? healthunitName;
  String? anothersupervisor;
  String? transportVehicleID;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    // labelPadding: EdgeInsets.only(left: 0,right: 0),
                    isScrollable: true,
                    dividerColor: primaryColor,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.white60,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "Hospital",
                      ),
                      Tab(
                        text: "Health unit",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
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
                                "Hospital location",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  hospitallocation = data;
                                },
                                typ: TextInputType.streetAddress,
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
                                "Supervisor name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  supervisorNameOfhospital = data;
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
                                "Add another supervisor",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  anothersupervisor = data;
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
                                "Hospital manager name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  hospitalmanagerName = data;
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
                      }));  
                           
                            }*/
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
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    //////
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0, top: 8),
                              child: Text(
                                "Health unit name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  healthunitName = data;
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
                                "Health unit location",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  healthunitlocation = data;
                                },
                                typ: TextInputType.streetAddress,
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
                                "Supervisor name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  supervisorNameOfhelth = data;
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
                                "Health unit manager name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  healthunitmanagerName = data;
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
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
