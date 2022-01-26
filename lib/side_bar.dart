import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main.dart';

class SideBar extends StatelessWidget {

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
                  ), child: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.black
                  ),
                  title: Text(
                    'Startseite',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                  Icons.block,
                  color: Colors.black
                  ),
                  title: Text(
                  'Algebra',
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
                  title: Text('Trigonometrie')
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black
                  ),
                  title: Text('Analysis'),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black),
                  title: Text('Statistik'),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black),
                  title: Text('Lineare Algebra'),
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
                  title: Text('Graphisch darstellen'),
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
              title: Text('Zurück'),
              textColor: Colors.black,
              onTap: () => Navigator.pop(context),
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
