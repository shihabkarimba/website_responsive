import 'package:flutter/material.dart';
import 'package:my_first_website/utils/constants.dart';
import 'package:my_first_website/widgets/hover_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (ctx) => desktopContainer6(),
      tablet: (ctx) => tabletContainer6(),
      mobile: (ctx) => mobileContainer6(),
    );
  }

  Widget desktopContainer6() {
    return Container(
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'The product we \nwork with',
                style: TextStyle(
                  fontSize: w! / 18,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi,\ntincidunt vel. Enim ipsum,\namet quis ullamcorper eget ut.',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverContainer(
                width: 250,
                title: 'Cross platform',
                subtitle: 'Lopus le daka menu havu',
                icon: AppImages.crossPlatformIcon,
              ),
              HoverContainer(
                width: 250,
                title: 'Cloud server',
                subtitle: 'Lopus le daka menu havu',
                icon: AppImages.cloudIcon,
              ),
              HoverContainer(
                width: 250,
                title: 'Pure javascript',
                subtitle: 'Lopus le daka menu havu',
                icon: AppImages.javascriptICon,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget tabletContainer6() {
    return Container(
      height: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'The product we \nwork with',
                style: TextStyle(
                  fontSize: w! / 18,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              Text(
                'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi,\ntincidunt vel. Enim ipsum,\namet quis ullamcorper eget ut.',
                style:
                    TextStyle(fontSize: w! / 80, color: Colors.grey.shade600),
              ),
            ],
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: HoverContainer(
                    width: 200,
                    title: 'Cross platform',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.crossPlatformIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: HoverContainer(
                    width: 200,
                    title: 'Cloud server',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.cloudIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: HoverContainer(
                    width: 200,
                    title: 'Pure javascript',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.javascriptICon,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  
  Widget mobileContainer6() {
    return Container(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The product we \nwork with',
            textAlign: TextAlign.center,
            style: TextStyle(
             fontSize: w! / 10,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim accumsan nisi,\ntincidunt vel. Enim ipsum,\namet quis ullamcorper eget ut.',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: w! / 30, color: Colors.grey.shade600),
          ),
          SizedBox(height: 30,),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: HoverContainer(
                    width: 200,
                    title: 'Cross platform',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.crossPlatformIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: HoverContainer(
                    width: 200,
                    title: 'Cloud server',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.cloudIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: HoverContainer(
                    width: 200,
                    title: 'Pure javascript',
                    subtitle: 'Lopus le daka menu havu',
                    icon: AppImages.javascriptICon,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
