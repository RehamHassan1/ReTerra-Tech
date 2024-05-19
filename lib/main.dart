import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swm1/assets/const.dart';
import 'package:swm1/login/login_view.dart';
import 'package:swm1/splash/splash_screen_view.dart';
import 'package:swm1/views/add%20_food_waste.dart';
import 'package:swm1/views/hospital_report_food_waste.dart';
import 'package:swm1/views/incinerator_report_body.dart';
import 'component/navig.dart';
import 'login/login_view_body.dart';
import 'login/share/cubit.dart';
import 'register/register_view_body.dart';
import 'views/about_page.dart';
import 'views/add_hospital_body.dart';
import 'views/add_medical_waste_body.dart';
import 'views/add_operation_body.dart';
import 'views/all_incinerator_report.dart';
import 'views/home_view_body.dart';
import 'views/hospital_report_body.dart';
import 'views/profile.dart';
import 'views/setting.dart';
import 'views/show_report_body.dart';
void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData(primaryColor: primaryColor),
            debugShowCheckedModeBanner: false,
            home: Addfoodwaste(),
        

    );
  }
}
