import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/SideBars/side_bar.dart';
import 'package:my_first_flutter_app/main.dart';

class AnalysisSideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ), child: Text(
                      'Analysis'
                    ),
                ),
                ListTile(
                  leading: Icon(
                      Icons.home,
                      color: Colors.black
                  ),
                  title: Text(
                    'Thema1',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Calculator')));
                  },
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black
                  ),
                  title: Text(
                      'Thema2',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black
                  ),
                  title: Text(
                      'Thema3',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black
                  ),
                  title: Text('Wahrscheinlichkeit',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black),
                  title: Text('Statistik',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black),
                  title: Text('Lineare Algebra',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black
                  ),
                  title: Text('Graphisch darstellen',
                      style: TextStyle(color: Colors.black, fontSize: 20)
                  ),
                  textColor: Colors.black,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
          SliverFillRemaining(child :
          Align(child:
          ListTile(
            leading: Icon(Icons.arrow_back,
                color: Colors.black
            ),
            title: Text('Zurück',
                style: TextStyle(color: Colors.black, fontSize: 20)
            ),
            textColor: Colors.black,
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SideBar())),
          ),
            alignment: Alignment.bottomCenter,
          ),
            hasScrollBody: false,
          )
        ],
      ),
    );
  }
}
