import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const kTapSelectedColor = Colors.red;
const kCardColor = Color(0xff1F232C);

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Primera fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: IconContent(
                      textIcon: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: IconContent(
                      textIcon: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Segunda fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Container(),
                  ),
                ),
              ],
            ),
          ),
          //Tercera fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Center(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Container(),
                  ),
                ),
              ],
            ),
          ),
          //Botón
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 12.0),
            color: const Color(0xffAB4FEE),
            alignment: Alignment.center,
            child: const Text(
              "CALCULATE",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

