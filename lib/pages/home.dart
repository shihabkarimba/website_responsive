import 'package:flutter/material.dart';
import 'package:my_first_website/pages/containers/container1.dart';
import 'package:my_first_website/pages/containers/container2.dart';
import 'package:my_first_website/pages/containers/container3.dart';
import 'package:my_first_website/pages/containers/container4.dart';
import 'package:my_first_website/pages/containers/container5.dart';
import 'package:my_first_website/pages/containers/container6.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:my_first_website/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
              Container5(),
              Container6()
            ],
          ),
        ),
      ),
    );
  }
}
