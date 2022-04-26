
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';

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
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          //Segunda fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          //Tercera fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




