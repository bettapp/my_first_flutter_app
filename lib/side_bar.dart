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
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'test')));
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
                  'Algebra',
                  style: TextStyle(color: Colors.black)
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
                    'Trigonometrie',
                    style: TextStyle(color: Colors.black)
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
                    'Analysis',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                    Icons.block,
                    color: Colors.black),
                  title: Text(
                    'Statistik',
                    style: TextStyle(color: Colors.black)
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                    Icons.block,
                    color: Colors.black),
                  title: Text(
                    'Lineare Algebra',
                    style: TextStyle(color: Colors.black)
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
                    'Graphisch darstellen',
                    style: TextStyle(color: Colors.black)
                  ),
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
