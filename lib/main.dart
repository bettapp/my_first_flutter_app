import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:flutter_tex/flutter_tex.dart';
import 'package:catex/catex.dart';
import './calculator.dart';
import './side_bar.dart';
import 'package:my_first_flutter_app/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MySplashScreen(),
      //home: MyHomePage(title: 'Calcualtor'),
    );
  }
}
/*class Entry {
  final String title;
  final List<Entry>
      children;
  Entry(this.title, [this.children] = const <Entry>[]]);
}
// this is the entire multi-level list displayed by this app
final <List>
*/

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mC = TextEditingController(text: "0"); //used by Lineare Funktion
  TextEditingController nC = TextEditingController(text: "0"); //used by Lineare Funktion

  TextEditingController aC = TextEditingController(text: "0");  //used by Quadratische Funktion
  TextEditingController bC = TextEditingController(text: "0");  //used by Quadratische Funktion
  TextEditingController cC = TextEditingController(text: "0");  //used by Quadratische Funktion

  int selection = 0;  //Selector for Home Page (0) / Lineare o. Quadratische Funktion (1)
  int function = 0; //Selector for Lineare Funktion (0) / Quadratische Funktion (1)

  double m = 0;
  double n = 0;

  double a = 0;
  double b = 0;
  double c = 0;
  double x1 = 0;
  double x2 = 0;

  late String qfx;
  late String a1 = a.toString();
  late String b1 = b.toString();
  late String c1 = c.toString();

  void selectF(){
    setState(() {
      selection++;
      m = double.parse(mC.text);
      n = double.parse(nC.text);
    });
  }

  void selectQ() {
    setState(() {
      selection++;
      a = double.parse(aC.text);
      a1 = a.toString();
      b = double.parse(bC.text);
      b1 = b.toString();
      c = double.parse(cC.text);
      c1 = c.toString();
    });
  }

  void reset(){
    setState(() {
      selection = 0;
      a = 0;
      b = 0;
      c = 0;
    });
  } //resets selection, a, b, c

  double nS(double m, double n) {
    double x;
    n /= m;
    x = -n;
    return x;
  }

  double nP(double a, double b, double c) {
    double x;
    x = (-b + sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
    return x;
  }

  double nN(double a, double b, double c) {
    double x;
    x = (-b - sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
    return x;
  }

  String qFunction(){
    String f;
    String vA = '';
    String vB = '';
    String vC = '';
    if(a >= 0)
    {
      vA = " ";
    }
    else if(a < 0)
    {
      vA = " ";
    }
    if(b >= 0)
    {
      vB = " + ";
    }
    else if(b < 0)
    {
      vB = " ";
    }
    if(c >= 0)
    {
      vC = " + ";
    }
    else if(c < 0)
    {
      vC = " ";
    }
    f = "f(x) =" + vA + a.toString() + "x^2" + vB + b.toString() + "x" + vC + c.toString();
    return f;
  }

  @override
  Widget build(BuildContext context) {
    if(selection == 0) {
      return Scaffold(
        drawer: SideBar(),
        appBar: AppBar(
          title: Text('Hauptmenü'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(-1, 0),
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      selection = 1;
                      function = 0;
                    });
                  },
                  child: Text(
                    "Lineare Funktion",
                  ),
                ),
              ),
              Align(
                alignment: Alignment(1, 0),
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      selection = 1;
                      function = 1;
                      }
                    );
                  },
                  child: Text(
                    "Quadratische Funktion",
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      selection = 3;
                      function = 0;
                    });
                  },
                  child: Text(
                    "Calculator",
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } //creates the buttons / home screen
    else if(selection == 1) {
      if (function == 0) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0, -0.35),
                    child: Text(
                        "Wählen sie m aus"
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.25),
                    child: TextField(
                      controller: mC,
                      decoration: InputDecoration(
                          hintText: "m"
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.1),
                    child: Text(
                        "Wählen sie n aus"
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: TextField(
                      controller: nC,
                      decoration: InputDecoration(
                          hintText: "n"
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: selectF,
                      child: Icon(
                          Icons.check
                      ),
                    ),
                  )
                ],
              )
          ),
        );
      }
      else if (function == 1) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Test1'),
            ),
            body: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0, -0.4),
                      child: Text(
                          'Wähle a aus'
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, -0.3),
                      child: TextField(
                        controller: aC,
                        decoration: InputDecoration(
                          hintText: "a",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, -0.15),
                      child: Text(
                        "Wähle b aus",
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, -0.05),
                      child: TextField(
                        controller: bC,
                        decoration: InputDecoration(
                          hintText: "b",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.1),
                      child: Text(
                          "Wähle c aus"
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.2),
                      child: TextField(
                        controller: cC,
                        decoration: InputDecoration(
                          hintText: "c",
                        ),

                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: selectQ,
                        child: Icon(Icons.check),
                      ),
                    )
                  ],
                )
            )
        );
      }
    } // creates the Lienare Funktion page
    else if(selection == 2) {
      if (function == 0) {
        x1 = nS(m, n);
        return Scaffold(
          appBar: AppBar(
            title: Text('Lineare Gleichung'),
          ),
          body: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, -0.1),
                  child: Text(
                      "x1:"
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.1),
                  child: Text(
                      "$x1"
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    onPressed: reset,
                    child: Icon(
                        Icons.autorenew
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
      if (function == 1) {
        x1 = nP(a, b, c);
        x2 = nN(a, b, c);
        qfx = qFunction();
        return Scaffold(
          appBar: AppBar(
            title: Text('Quadratische Gleichung'),
          ),
          body: Center(
            child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0, -0.2),
                child: Text(
                  "Die erste Lösung x1 ist:",
                ),
              ),
                Align(
                  alignment: Alignment(0, -0.1),
                  child: Text(
                    "$x1",
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.1),
                  child: Text(
                    "Die zweite Lösung x2 ist:",
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.2),
                  child: Text(
                    "$x2",
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: DefaultTextStyle(
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      child: Column(
                        children: [
                          CaTeX(qfx),
                          SizedBox(height: 35,),
                          Text(r'Mit der abc-Formel ist die Diskriminate:'),
                          SizedBox(height: 35,),
                          CaTeX(r'x_{1/2} = \frac {-b\pm \sqrt{b^2-4ac}}{2a}'),
                          SizedBox(height: 35,),
                          CaTeX(r'x_{1/2} = \frac {-'+b1+r'\pm \sqrt{'+b1+r'^2- 4*'+ a1 +r'*' +c1+r'}}{2'+r'*'+ a1+r'}'),
                          SizedBox(height: 35,),
                          Text(r'Daraus folgt:'),
                        ]
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: reset,
                    child: Icon(Icons.autorenew),
                  ),
                )
              ],
            ),
          ),
        );
      }
    } // creates the Quadratische Funktion page  */
    else if(selection == 3){
      return Container(
        height: 0,
        width: 0,
        child: Calculator(),
      );
    }
    return Scaffold(
      drawer: SideBar(),
      body: Container(
        child: Text(
          'Something went wrong',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

