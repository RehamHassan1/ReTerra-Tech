
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swm1/views/home_view.dart';

import '../assets/const.dart';
import '../component/com.dart';

class AddMedicalWasteViewBody extends StatefulWidget {
  AddMedicalWasteViewBody({super.key});

  @override
  State<AddMedicalWasteViewBody> createState() =>
      _AddMedicalWasteViewBodyState();
}

class _AddMedicalWasteViewBodyState extends State<AddMedicalWasteViewBody>
    with TickerProviderStateMixin {
  String? datetimeOfRec;
  String? timeOfRec;
  String? department;
  String? weightOfRec;
  String? totalweightOfRec;
  int totalWeightOfRec = 0;
  String? datetimeOfDelivery;
  String? timeOfDelivery;
  String? totalweightOfDelivery;
  String? recipientName;
  String? transportVehicleID;
  String? remainingWeight;
  String? anotherRecipient;
  List<TextEditingController> listcontroller = [TextEditingController()];
  List<TextEditingController> listcontrollerWeight = [TextEditingController()];

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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    isScrollable: true,
                    dividerColor: primaryColor,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.white60,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "Receiving Report",
                      ),
                      Tab(
                        text: "Delivery Report",
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
                                "ID of waste",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
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
                                padding:
                                    EdgeInsets.only(left: 10, top: 2),
                                child: Text(
                                  "2186",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
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
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: listcontroller.length,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 4.0, top: 8),
                                        child: Text(
                                          "Department name",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 160,
                                        child: TextF(
                                          controller: listcontroller[index],
                                          onChange: (data) {
                                            department = data;
                                            print(department);
                                          },
                                          typ: TextInputType.text,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 4.0, top: 8),
                                        child: Text(
                                          "The weight",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 160,
                                        child: TextF(
                                          controller:
                                              listcontrollerWeight[index],
                                          onChange: (data) {
                                            weightOfRec = data;
                                            totalWeightOfRec = 0;
                                            for (int i = 0;
                                                i < listcontrollerWeight.length;
                                                i++) {
                                              totalWeightOfRec += int.tryParse(
                                                      listcontrollerWeight[i]
                                                          .text) ??
                                                  0;
                                            }
                                            print(totalWeightOfRec);
                                          },
                                          typ: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              listcontroller.add(TextEditingController());
                              listcontrollerWeight.add(TextEditingController());
                            });
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
                            'Add another department',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 20),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0, top: 8),
                              child: Text(
                                "Total weight",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                child: Text(
                                  "$totalWeightOfRec",
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])
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
                            if (totalWeightOfRec == 0) {
                              totalWeightOfRec += int.parse(weightOfRec!);
                            } else {
                              totalWeightOfRec = 0;
                              totalWeightOfRec += int.parse(weightOfRec!);

                            }*/
                            setState(() {
                              //listcontroller.add(TextEditingController());
                              listcontrollerWeight.add(TextEditingController());
                            });
                            print(totalWeightOfRec);
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
                                "ID of waste",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
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
                                  "2186",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 150,
                                  child: TextF(
                                    hinttext: '5/6/2024',
                                    onChange: (data) {
                                      datetimeOfDelivery = data;
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 100,
                                  child: TextF(
                                    hinttext: '9:00',
                                    onChange: (data) {
                                      timeOfDelivery = data;
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
                                "Total weight",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  totalweightOfDelivery = data;
                                  print("$totalweightOfDelivery");
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
                                "Recipient name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  recipientName = data;
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
                                "Transport vehicle ID",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  transportVehicleID = data;
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
                                "Remaining weight",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  remainingWeight = data;
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
                                "Add another recipient ",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  anotherRecipient = data;
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
