
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  Widget childCard;
  ReusableCard({required this.childCard,});

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
