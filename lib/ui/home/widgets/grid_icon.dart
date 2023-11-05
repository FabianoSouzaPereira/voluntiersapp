import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final String route;

  const CustomIcon({Key? key, required this.iconData, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
