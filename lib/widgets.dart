import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {

  Widget childCard;
  Color color;
  Function? onTap;

  ReusableCard({
    required this.childCard,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null
          ? () {
              onTap!();
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: childCard,
      ),
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



class InputIconButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kTapSelectedColor,
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      child: FaIcon(FontAwesomeIcons.minus),
      onPressed: () {

      },
    );
  }
}
