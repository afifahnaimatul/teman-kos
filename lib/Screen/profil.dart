import 'package:flutter/material.dart';
import 'package:temenkos/Screen/posting.dart';
import 'package:temenkos/Screen/tk__search.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: Navigator.of(context).pop,
        ),
        centerTitle: true,
        title: Text("Profil"),
        actions: <Widget>[
          Icon(Icons.edit),
          Padding(padding: EdgeInsets.only(right: 16.0))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Container(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pinimg.com/originals/64/71/47/647147ccec441a94063e46e253667f9c.jpg"),
                        radius: 32,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "@siapa_saya",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
                        Text(
                          "Malang City",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                Divider(
                  color: Colors.black12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "10",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 14
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          height: 40,
                          width: 140,
                          child: RaisedButton(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                            color: Colors.green[400],
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Posting();
                              }));
                            },
                            child: Text(
                              "Unggah",
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          CScrollKerja(),
          CScrollKerja(),
          CScrollKerja(),
          CScrollKerja(),
          CScrollKerja(),
          Padding(padding: EdgeInsets.symmetric(vertical: 16)),
        ],
      )
    );
  }
}
