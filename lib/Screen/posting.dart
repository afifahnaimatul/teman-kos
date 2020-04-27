import 'package:flutter/material.dart';

class Posting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
          onPressed: Navigator.of(context).pop,
        ),
        title: Text("Unggah Baru"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Form(),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                    color: Colors.green[400],
                    onPressed: () {},
                    child:Text(
                      "Unggah",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                    )
                  ),
                )
              ]
            )
          )
        ],
      ),
    );
  }
}

class Form extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FormIsi(judul: "Perusahaan", hint: "Mc Donald"),
        FormIsi(judul: "Posisi", hint: "Cooker"),
        Dropdown(judul: "Jenis Pekerjaan"),
        FormIsi(judul: "Lokasi Pekerjaan", hint: "Malang"),
        FormIsi(judul: "Gaji", hint: "Rp. ", tipe: TextInputType.number),
        FormIsi(judul: "Detail Pekerjaan", hint: "Deskripsi", maks: 20),
        FormIsi(judul: "Informasi Perusahaan", hint: "Informasi", maks: 20,)
      ]
    );
  }
}

class FormIsi extends StatelessWidget{
  FormIsi({this.judul, this.hint, this.tipe, this.maks});
  final String judul, hint;
  final TextInputType tipe;
  final int maks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            judul,
            style: TextStyle(
              fontSize: 18
            )
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          TextField(
            maxLines: maks,
            keyboardType: tipe,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hint,
            ),
          )
        ],
      )
    );
  }
}

class Dropdown extends StatefulWidget{
  Dropdown({this.judul});
  final String judul;
  _DropdownState createState() => _DropdownState(judul: judul);
}

class _DropdownState extends State<Dropdown>{
  _DropdownState({this.judul});
  final String judul;

  var option = ["Part Time", "Full Time"];
  var itemTerpilih = 'Full Time';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Text(
            judul,
            style: TextStyle(
              fontSize: 18
            )
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            height: 50,
            child: DropdownButton<String>(
              isDense: true,
              items: option.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String dipilih) {
                itemTampil(dipilih);
              },

              value: itemTerpilih,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        ],
      ),
    );
  }

  void itemTampil(String dipilih){
    setState((){
      this.itemTerpilih = dipilih;
    });
  }
}