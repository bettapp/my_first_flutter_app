import 'package:flutter/material.dart';

class SideBar2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ), child: null,
          ),
          CustomListTile("images/Bild1.png", "Analysis", ()=>{}),
          CustomListTile("images/Bild2.png", "Lineare Gleichungen", ()=>{}),
          CustomListTile("images/Bild3.png", "Quadratische Gleichungen", ()=>{}),
          CustomListTile("images/Bild4.png", "Normalform -> Scheitelpunktform", ()=>{}),
          CustomListTile("images/Bild4.png", "Scheitelpunktform -> Normalform", ()=>{}),
          CustomListTile("images/Bild4.png", "Ganzrationale Gleichungen", ()=>{}),
          CustomListTile("images/Bild4.png", "Stochastik", ()=>{}),
          Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  title: Text("Zurück"),
                  onTap: () => Navigator.pop(context),
                ),
              ))
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {

  String image;
  String text;
  Function onTap;

  CustomListTile(this.image, this.text, this.onTap,);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            //border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.blueAccent,
          onTap: ()=> {
            onTap
          },
          child: Container(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(image, width: 65, height: 65),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(
                          fontSize: 12
                      ),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}