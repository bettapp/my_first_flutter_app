import 'package:flutter/material.dart';

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
                      Icons.block,
                      color: Colors.black),
                  title: Text('Algebra'),
                  textColor: Colors.black,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                      Icons.block,
                      color: Colors.black),
                  title: Text('Trigonometrie'),
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
