import 'package:flutter/material.dart';
import 'package:temenkos/Screen/home.dart';
import 'package:temenkos/Screen/TemanKerja.dart';
import 'package:temenkos/Screen/tk_detail.dart';

class TKSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
          onPressed: Navigator.of(context).pop,
        ),
        title: Text("Teman Kerja"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return TKSearch();
              }));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          CardSearch(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Sort(icon: Icons.sort, teks: "Tampilkan Sesuai"),
              Filter(icon: Icons.filter_list, teks: "Filter")
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Image.asset("img/job/mcd.png"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Tampil(teks: "Hasil Pencarian"),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CScrollKerja(),
                    CScrollKerja(),
                    CScrollKerja(),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class CScrollKerja extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Card(
          child: Row(
            children: <Widget>[
              Image.asset("img/job/mcd.png", fit: BoxFit.fitHeight, height: 120, width: 100,),
              CSearchKerja(),
            ],
          )
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return TKDetail();
          }));
        },
      )
    );
  }
}

class IconText extends StatelessWidget {
  IconText ({this.icon, this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(icon, size: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0)),
          Text(teks, style: TextStyle(fontSize: 14)),
        ],
      )
    );
  }
}

class CSearchKerja extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text("McDonalds", style: TextStyle(fontSize: 20)),
        IconText(icon: Icons.work, teks: "Cooker"),
        IconText(icon: Icons.timer, teks: "Part Time"),
        IconText(icon: Icons.place, teks: "Lowokwaru, Malang"),
      ],)
    );
  }
}
