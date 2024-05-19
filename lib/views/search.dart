import 'package:flutter/material.dart';

import '../assets/const.dart';
import '../component/com.dart';
import 'home_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            "Search",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextF(typ: TextInputType.text)
            ],
          ),
        ));
  }
}
