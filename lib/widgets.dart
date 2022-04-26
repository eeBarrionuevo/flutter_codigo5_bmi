import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  Widget childCard;
  ReusableCard({
    required this.childCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xff1F232C),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: childCard,
    );
  }
}

class IconContent extends StatelessWidget {
  String textIcon;
  IconData icon;

  IconContent({
    required this.textIcon,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 60.0),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textIcon,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ],
    );
  }
}
