import 'package:flutter/material.dart';
import 'package:my_first_website/utils/colors.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => desktopContainer2(),
      tablet: (ctx) => tabletContainer2(),
      mobile: (ctx) => mobileContainer2(),
    );
  }

  //================ DESKTOP ========================

  Widget desktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      color: AppColors.primary,
      child: Stack(
        children: [
          Positioned(
            bottom: 150,
            child: Image.asset(
              AppImages.vectorDesign1,
              width: 500,
              height: 600,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AppImages.vectorDesign2,
              width: 440,
              height: 480,
            ),
          ),
          Column(
            children: [
              Container(
                height: 700,
                child: Stack(
                  children: [
                    Positioned(
                        left: w! * .01,
                        right: w! * .01,
                        bottom: 0,
                        child: Image.asset(
                          AppImages.dashboardImage,
                          height: 500,
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.fbLogo, width: 100),
                    Image.asset(AppImages.googleLogo, width: 100),
                    Image.asset(AppImages.samsungLogo, width: 100),
                    Image.asset(AppImages.cocacolaLogo, width: 100),
                    Image.asset(AppImages.linkedInLogo, width: 100)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

//================ TABLET ========================

  Widget tabletContainer2() {
    return Container(
      height: 450,
      width: double.infinity,
      color: AppColors.primary,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              AppImages.vectorDesign1,
              width: 250,
              height: 300,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AppImages.vectorDesign2,
              width: 220,
              height: 240,
            ),
          ),
          Column(
            children: [
              Container(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                        left: w! * .01,
                        right: w! * .01,
                        bottom: 0,
                        child: Image.asset(
                          AppImages.dashboardImage,
                          height: 250,
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.fbLogo, width: 50),
                    Image.asset(AppImages.googleLogo, width: 50),
                    Image.asset(AppImages.samsungLogo, width: 50),
                    Image.asset(AppImages.cocacolaLogo, width: 50),
                    Image.asset(AppImages.linkedInLogo, width: 50)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

//================ MOBILE ========================

  Widget mobileContainer2() {
    return Container(
      height: 310,
      width: double.infinity,
      color: AppColors.primary,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Positioned(
                        left: w! * .01,
                        right: w! * .01,
                        bottom: 0,
                        child: Image.asset(
                          AppImages.dashboardImage,
                          height: 200,
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.samsungLogo, width: 50),
                          Image.asset(AppImages.cocacolaLogo, width: 50),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.linkedInLogo, width: 50),
                          Image.asset(AppImages.fbLogo, width: 50),
                          Image.asset(AppImages.googleLogo, width: 50),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
