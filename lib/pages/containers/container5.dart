import 'package:flutter/material.dart';
import 'package:my_first_website/utils/colors.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatelessWidget {
  const Container5({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => desktopContainer3(),
      tablet: (ctx) => tabletContainer3(),
      mobile: (ctx) => mobileContainer3(),
    );
  }

  Widget desktopContainer3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      height: 850,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'USE ANYTIME',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Use anytime \nwhen you \nneed',
                style: TextStyle(
                  fontSize: w! / 18,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi, tincidunt vel.\nEnim ipsum, amet quis ullamcorper eget ut.',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: AppColors.primary),
                ),
              )
            ],
          ),
          Image.asset(
            AppImages.container5Illustration,
            width: w! * .4,
          )
        ],
      ),
    );
  }

  Widget tabletContainer3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      height: 450,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'USE ANYTIME',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Use anytime \nwhen you \nneed',
                style: TextStyle(
                  fontSize: w! / 15,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi, tincidunt vel.\nEnim ipsum, amet quis ullamcorper eget ut.',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: AppColors.primary),
                ),
              )
            ],
          ),
          Image.asset(
            AppImages.container5Illustration,
            width: w! * .4,
          )
        ],
      ),
    );
  }

  Widget mobileContainer3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AppImages.container5Illustration,
            width: w! * .5,
          ),
          Column(
            children: [
              Text(
                'USE ANYTIME',
                style:
                    TextStyle(fontSize: w! / 30, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
               'Use anytime \nwhen you \nneed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: w! / 10,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi, tincidunt vel.\nEnim ipsum, amet quis ullamcorper eget ut.',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: w! / 30, color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: AppColors.primary),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
