import 'package:flutter/material.dart';
import 'package:my_first_website/utils/colors.dart';

class HoverContainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final String icon;
  final double width;
  HoverContainer({
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.width,
  });
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHovered = false;
  late double width;

  @override
  void initState() {
    super.initState();
    width = widget.width;
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: isHovered ? width + 20 : width,
          height: isHovered ? width + 20 : width,
          decoration: BoxDecoration(
            color: isHovered
                ? AppColors.primary
                : Color.fromARGB(255, 232, 232, 232),
            borderRadius: BorderRadius.circular(10),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.icon,
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          )),
    );
  }
}
