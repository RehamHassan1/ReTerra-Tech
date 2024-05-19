import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../assets/const.dart';
import '../component/com.dart';
import 'home_view.dart';

class AddOperationBody extends StatefulWidget {
  AddOperationBody({super.key});

  @override
  State<AddOperationBody> createState() => _AddOperationBodyState();
}

class _AddOperationBodyState extends State<AddOperationBody>
    with TickerProviderStateMixin {
  String? datetimeOfRec;
  String? weight;
  String? hospitalName;
  String? remainingInventoryFromTheTreviousDay;
  String? remainingWasteWeight;
  String? weightOfWasteBurnedToday;
  String? totalWasteToday;
  String? truck_scale_of_incinerator;
  String? total_weight_of_the_truck_befor_delivery;
  String? driverName;
  String? truckScale;
  String? weightOftrick;
  String? totalWeight;
  String? datetimeOfOperation;
  List<TextEditingController> listcontroller = [TextEditingController()];
  List<TextEditingController> listcontrollerWeight = [TextEditingController()];
  List<TextEditingController> listcontrollerWeightOfTruck1 = [
    TextEditingController()
  ];
  List<TextEditingController> listcontrollerOfTruck1 = [
    TextEditingController()
  ];
  List<TextEditingController> listcontrollerWeightOfTruck2 = [
    TextEditingController()
  ];
  List<TextEditingController> listcontrollerOfTruck2 = [
    TextEditingController()
  ];
@override
  void dispose() {
    for (final controller in listcontrollerOfTruck2) {
      controller.dispose();
    }
    for (final controller in listcontrollerWeightOfTruck2) {
      controller.dispose();
    }
    for (final controller in listcontrollerOfTruck1) {
      controller.dispose();
    }
    for (final controller in listcontrollerWeightOfTruck1) {
      controller.dispose();
    }
    for (final controller in listcontrollerWeight) {
      controller.dispose();
    }
    for (final controller in listcontroller) {
      controller.dispose();
    }
    super.dispose();
  }
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
                    dragStartBehavior : DragStartBehavior.start,
                    //isScrollable: true,
                    dividerColor: primaryColor,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.white60,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "Operation",
                      ),
                      Tab(
                        text: "Weighing process",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: listcontroller.length,
                            itemBuilder: (_, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Itinerary:",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Row(
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
                                              "Hospital name",
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
                                                hospitalName = data;
                                                print(hospitalName);
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
                                                weight = data;
                                              },
                                              typ: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                listcontroller.add(TextEditingController());
                                listcontrollerWeight
                                    .add(TextEditingController());
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
                              'Add another Itinerary',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0, top: 8),
                              child: Text(
                                "Remaining inventory from the previous day",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  remainingInventoryFromTheTreviousDay = data;
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
                                "Total waste today",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  totalWasteToday = data;
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
                                "Weight of waste burned today",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  weightOfWasteBurnedToday = data;
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
                                "Remaining waste weight",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  remainingWasteWeight = data;
                                },
                                typ: TextInputType.streetAddress,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //////
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                  datetimeOfOperation = data;
                                },
                                typ: TextInputType.datetime,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: listcontrollerOfTruck1.length,
                            itemBuilder: (_, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Add Itinerary:",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Row(
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
                                              "Hospital name",
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
                                                  listcontrollerOfTruck1[index],
                                              onChange: (data) {
                                                hospitalName = data;
                                                print(hospitalName);
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
                                                  listcontrollerWeightOfTruck1[
                                                      index],
                                              onChange: (data) {
                                                weight = data;
                                              },
                                              typ: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                listcontrollerOfTruck1
                                    .add(TextEditingController());
                                listcontrollerWeightOfTruck1
                                    .add(TextEditingController());
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
                              'Add another Itinerary',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0, top: 8),
                              child: Text(
                                "Total Weight",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  totalWeight = data;
                                },
                                typ: TextInputType.streetAddress,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: listcontrollerOfTruck2.length,
                            itemBuilder: (_, index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 4.0, top: 8),
                                            child: Text(
                                              "Truck scale",
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
                                                  listcontrollerOfTruck2[index],
                                              onChange: (data) {
                                                truckScale = data;
                                                print(truckScale);
                                              },
                                              typ: TextInputType.text,
                                            ),
                                          ),
                                        ],
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
                                              listcontrollerWeightOfTruck2[
                                                  index],
                                          onChange: (data) {
                                            weightOftrick = data;
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
                        Center(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                listcontrollerOfTruck2
                                    .add(TextEditingController());
                                listcontrollerWeightOfTruck2
                                    .add(TextEditingController());
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
                              'Add another truck scale',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 4.0, top: 8),
                              child: Text(
                                "Driver name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  driverName = data;
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
                                "Total weight of the truck before delivery",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  total_weight_of_the_truck_befor_delivery =
                                      data;
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
                                "Truck scale of incinerator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: double.maxFinite,
                              child: TextF(
                                onChange: (data) {
                                  truck_scale_of_incinerator = data;
                                },
                                typ: TextInputType.streetAddress,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: OutlinedButton(
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
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 25),
                            ),
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
