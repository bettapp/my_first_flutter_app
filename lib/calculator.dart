import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:my_first_flutter_app/side_bar.dart';

import './side_bar.dart';

void main(){
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.red),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  String equation = '0';
  String result = '0';
  String expression = '0';
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == 'C'){
        equation = '0';
        result = '0';
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      }
      else if(buttonText == '⌫'){
        equation = equation.substring(0, equation.length - 1);
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if(equation == ''){
          equation = '0';
        }
      }
      else if(buttonText == '='){
        equationFontSize = 38.0;
        resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        expression = expression.replaceAll(',', '.');

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}'.replaceAll('.', ',');
        }catch(e){
          result = 'ERROR';
        }
      }

      else{
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if(equation == '0'){
          equation = buttonText;
        }
        else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white
          ),
        ),
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(19.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
            )
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(title: Text('Calculator')),
      drawer: SideBar(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(equation, style: TextStyle(fontSize: equationFontSize))
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(result, style: TextStyle(fontSize: resultFontSize)),
          ),
          Expanded(
              child: Divider()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('C', 1, Colors.red),
                        buildButton('⌫', 1, Colors.blueAccent),
                        buildButton('÷', 1, Colors.blueAccent)
                      ]
                    ),
                    TableRow(
                        children: [
                          buildButton('7', 1, Colors.black54),
                          buildButton('8', 1, Colors.black54),
                          buildButton('9', 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton('4', 1, Colors.black54),
                          buildButton('5', 1, Colors.black54),
                          buildButton('6', 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton('1', 1, Colors.black54),
                          buildButton('2', 1, Colors.black54),
                          buildButton('3', 1, Colors.black54),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton(',', 1, Colors.black54),
                          buildButton('0', 1, Colors.black54),
                          buildButton('00', 1, Colors.black54),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('×', 1, Colors.blueAccent)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('-', 1, Colors.blueAccent)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('+', 1, Colors.blueAccent)
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('=', 2, Colors.red)
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

