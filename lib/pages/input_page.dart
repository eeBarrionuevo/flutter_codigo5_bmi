import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTapSelectedColor = Color(0xff373d4e);
const kCardColor = Color(0xff1F232C);
const kPrimaryColor = Color(0xffAB4FEE);

enum Gender {
  male,
  female,
  matasquita,
  mandarina,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedOption = Gender.male;
  int height = 165;
  int weight = 78;
  int age = 29;

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
                    color: selectedOption == Gender.male
                        ? kTapSelectedColor
                        : kCardColor,
                    childCard: IconContent(
                      textIcon: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    onTap: () {
                      selectedOption = Gender.male;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedOption == Gender.female
                        ? kTapSelectedColor
                        : kCardColor,
                    childCard: IconContent(
                      textIcon: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    onTap: () {
                      selectedOption = Gender.female;
                      setState(() {});
                    },
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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40.0),
                            ),
                            Text(" cm"),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 0,
                          max: 200,
                          onChanged: (double valueSlider) {
                            height = valueSlider.round();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButton(),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButton(),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButton(),
                          ],
                        ),
                      ],
                    ),
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
            color: kPrimaryColor,
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
