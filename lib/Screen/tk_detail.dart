import 'package:flutter/material.dart';
import 'package:temenkos/Screen/home.dart';
import 'package:url_launcher/url_launcher.dart';

class TKDetail extends StatelessWidget{
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
        title: Text("McDonald", style: TextStyle(fontSize: 20.0),),
        actions: <Widget>[
          Icon(Icons.favorite),
          Padding(padding: EdgeInsets.only(right: 16.0))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("img/job/mcd.png"),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CSearchKerja2(),
                Detail(judul: "Detail Pekerjaan"),
                Info(judul: "Informasi Perusahaan"),
                Tampil(teks: "Berikan Penilaian"),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                      Icon(Icons.star_border, size: 40.0,),
                      Icon(Icons.star_border, size: 40.0,),
                      Icon(Icons.star_border, size: 40.0,),
                      Icon(Icons.star_border, size: 40.0,),
                      Icon(Icons.star_border, size: 40.0,),
                    ]
                  )
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: InkWell(
                    child: RaisedButton(
                      color: Colors.green[400],
                      onPressed:  () async{
                        if(await canLaunch("google.com")){
                          await launch("google.com");
                        }
                      },
                      child: Text(
                        "Lamar Pekerjaan",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                      )
                    ),
                    onTap: () async{
                      if(await canLaunch("google.com")){
                        await launch("google.com");
                      }
                    },
                  )
                ),
                Padding(padding: EdgeInsets.only(bottom: 20))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget{
Detail({this.judul});
final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Tampil(teks: judul),
          Card(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: <TextSpan> [
                  TextSpan(text: "Kualifikasi Pekerjaan:\n"),
                  TextSpan(text: ' - Minimal S1 jurusan Tata Boga\n'),
                  TextSpan(text: ' - Maksimal usia 25 tahun\n'),
                  TextSpan(text: ' - Wanita lebih diutamakan\n'),
                  TextSpan(text: ' - Mampu bekerja dalam tim\n'),
                  TextSpan(text: ' - Sehat jasmani dan rohani\n'),
                  TextSpan(text: ' - Domisili Malang'),
                  ],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black
                  )
                ),
              ),
            )
          )
        ]
      )
    );
  }
}


class Info extends StatelessWidget{
Info({this.judul, this.deskripsi});
final String judul;
final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Tampil(teks: judul),
          Card(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: <TextSpan>
                [
                  TextSpan(text: "McDonald's Corporation NYSE adalah waralaba rumah makan siap saji terbesar di dunia. Hidangan utama di restoran-restoran McDonald's adalah hamburger, namun kami juga menyajikan minuman ringan, kentang goreng dan hidangan-hidangan lokal yang disesuaikan dengan tempat restoran itu berada. Lambang McDonald's adalah dua busur berwarna kuning yang biasanya dipajang di luar rumah-rumah makan kami dan dapat segera dikenali oleh masyarakat luas."),
                ],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}

class CSearchKerja2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        IconText2(icon: Icons.work, teks: "Cooker"),
        IconText2(icon: Icons.timer, teks: "Part Time"),
        IconText2(icon: Icons.place, teks: "Lowokwaru, Malang"),
        IconText2(icon: Icons.money_off, teks: "Rp. 800000 /bulan"),
        IconText2(icon: Icons.thumb_up, teks: "80 (dari 89 penilai)",)
      ],)
    );
  }
}

class IconText2 extends StatelessWidget {
  IconText2 ({this.icon, this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(icon, size: 25),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 16.0)),
          Text(teks, style: TextStyle(fontSize: 18)),
        ],
      )
    );
  }
}
