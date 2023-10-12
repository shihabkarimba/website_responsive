import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_website/utils/colors.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => desktopContainer1(),
      tablet: (ctx) => tabletContainer1(),
      mobile: (ctx) => mobileContainer1(),
    );
  }

  //================ DESKTOP ========================

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
                height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 18,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style:
                      TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          child: Row(
                            children: [
                              Text('Try Free Domo'),
                              SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                AppICons.arrowDown,
                                width: 15,
                                height: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-Web, IOS and Andriod',
                      style: TextStyle(
                          color: Colors.grey.shade600, fontSize: w! / 80),
                    ),
                  ],
                )
              ],
            ),
          )),
          Image.asset(
            AppImages.container1Illustration,
            width: w! * .4,
          )
        ],
      ),
    );
  }
  //================ TABLET ========================

  Widget tabletContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 15,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style:
                      TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          child: Row(
                            children: [
                              Text('Try Free Domo'),
                              SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                AppICons.arrowDown,
                                width: 15,
                                height: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.asset(
            AppImages.container1Illustration,
            width: w! * .4,
          )
        ],
      ),
    );
  }

  //================ MOBILE ========================

  Widget mobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * .1),
      child: Column(
        children: [
          Image.asset(
            AppImages.container1Illustration,
            width: w! * .5,
          ),
          SizedBox(height: 50,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: w! / 10,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style:
                      TextStyle(fontSize: w! / 30, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    width: w! * .5,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Try Free Domo'),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(
                            AppICons.arrowDown,
                            width: 15,
                            height: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
