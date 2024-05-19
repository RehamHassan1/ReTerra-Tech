import 'package:flutter/material.dart';

import 'hospital_report_body.dart';

class HospitalReport extends StatelessWidget {
  const HospitalReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HospitalReportBody() ,
    );
  }
}