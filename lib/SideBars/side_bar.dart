import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
        /*CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(child:*/
              ListView(
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ), child: null,
                  ),
                  ExpansionTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black
                    ),
                    title: Text("Analysis"),
                  children: <Widget>[
                    GestureDetector(
                      child: SizedBox(
                        width: 250,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                          //color: Colors.black,
                          //borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(child: Center(child: Text("Lineare Gleichungen")))
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    SizedBox(height: 7,),
                      GestureDetector(
                        child: SizedBox(
                          width: 250,
                          height: 35,
                          child: Container(
                            decoration: BoxDecoration(
                            //color: Colors.black,
                            //borderRadius: BorderRadius.circular(15),
                            ),
                            child: Card(child: Center(child: Text("Quadratische Gleichungen")))
                          ),
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    SizedBox(height: 7,),
                    GestureDetector(
                      child: SizedBox(
                        width: 250,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            //borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(child: Center(child: Text("Normalform -> Scheitelpunktform")))
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    SizedBox(height: 7,),
                    GestureDetector(
                      child: SizedBox(
                        width: 250,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            //borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(child: Center(child: Text("Scheitelpunktform -> Normalform")))
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    SizedBox(height: 7,),
                    GestureDetector(
                      child: SizedBox(
                        width: 250,
                        height: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            //borderRadius: BorderRadius.circular(15),
                          ),
                          child: Card(child: Center(child: Text("Ganzrationale Gleichungen")))
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(
                      Icons.block,
                      color: Colors.black
                    ),
                    title: Text("Stochastik"),
                    children: <Widget>[Text("Thema 1"), Text("Thema 2")],
                  ),
                ],
              ),
            );
          /*SliverFillRemaining(child :
            Align(child:
              ListTile(
                leading: Icon(Icons.arrow_back,
                color: Colors.black),
                title: Text('Zurück',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
                textColor: Colors.black,
                onTap: () => Navigator.pop(context)),
              alignment: Alignment.bottomCenter),
              hasScrollBody: false,
            ),
          ]
        ),
      );*/
    }
  }
