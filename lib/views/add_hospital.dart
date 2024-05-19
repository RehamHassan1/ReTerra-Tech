import 'package:flutter/material.dart';

import 'add_hospital_body.dart';

class AddHospital extends StatefulWidget {
  const AddHospital({super.key});

  @override
  State<AddHospital> createState() => _AddHospitalState();
}

class _AddHospitalState extends State<AddHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddHospitalBody(),);
  }
}