import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_website/utils/colors.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => desktopNavBar(),
      mobile: (ctx) => mobileNavBar(),
      tablet: (ctx) => tabletNavBar(),
    );
  }

  //================ MOBILE ========================

  Widget mobileNavBar() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppICons.menuIcon,
              width: 20,
              height: 20,
            ),
          ),
          navLogo(),
        ],
      ),
    );
  }

  //================ TABLET ========================

  Widget tabletNavBar() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton(text: 'Features', margin: 10),
              navButton(text: 'About us', margin: 10),
              navButton(text: 'Pricing', margin: 10),
              navButton(text: 'Feedback', margin: 10),
            ],
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: AppColors.primary)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text('Request a demo'),
              ),
            ),
          )
        ],
      ),
    );
  }

  //================ DESKTOP ========================

  Widget desktopNavBar() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton(text: 'Features'),
              navButton(text: 'About us'),
              navButton(text: 'Pricing'),
              navButton(text: 'Feedback'),
            ],
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: AppColors.primary)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text('Request a demo'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton({
    required text,
    double? margin,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: margin ?? 20,
      ),
      child: Text(text),
    );
  }

  Widget navLogo() {
    return Container(
      height: 40,
      child: Image.asset(
        AppICons.logo,
        fit: BoxFit.cover,
      ),
    );
  }
}
