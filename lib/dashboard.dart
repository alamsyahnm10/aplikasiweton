import 'package:aplikasiweton/menu.dart';
import 'package:flutter/material.dart';
import 'menu.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int hari = 0;
  int weton = 0;
  String namaweton ="";
  String ketweton ="";

  @override
  Widget build(BuildContext context) {
    int hasil = (hari + weton) % 5;
    if (hasil == 1){
      namaweton= "Sri";
      ketweton= "Orang yang neptunya jatuh pada karakter Sri, artinya dia alah orang yang dikasihi, diwelasi, mendapat banyak simpatik, menarik dalam pergaulan, banyak relasi.";
    }
    if (hasil == 2){
      namaweton= "Rejeki";
      ketweton= "Orang yang neptunya jatuh pada karakter Rejeki ini bisa dibilang orang yang beruntung, hoki.";
    }
    if (hasil == 3){
      namaweton= "Gedong";
      ketweton= "Orang yang neptunya jatuh pada karakter Gedhong dalam istilah Jaawa disebut kuat nyunggi derajat , kasinungan sugih. Kuat nyunggi derajat artinya dia akan mampu membawa amanah yang diberikan.";
    }
    if (hasil == 4){
      namaweton= "Lara";
      ketweton= "Orang yang neptunya jatuh pada karakter Loro (sakit) dalam perjalanan hidupnya akan pernah mengalami yang namanya disakiti hatinya oleh orang lain, atau istilahnya keloro-loro atine.";
    }
    if (hasil == 5){
      namaweton= "Pati";
      ketweton= "Orang yang neptunya jatuh pada karakter Pati, orang tsb akan pernah mengalami perjalanan hidup yang betul-betul pahit.";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cari Perhitungan Weton',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Silahkan Masukkan Hari & Weton',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'assets/images/kitab.png',
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Hari: Senin = 4 || Selasa = 3 || Rabu = 7 || Kamis = 8 || Jumat = 6 || Sabtu = 9 || Minggu || 5',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Weton: Kliwon = 8 || Wage = 4 || Pahing = 9 || Pon = 7 || Legi = 5',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contoh: Hari = 8, Weton = 8',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      hari = int.parse(txt);
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Hari',
                    prefixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  //controller: hari,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      weton = int.parse(txt);
                    });
                  },
                  //obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Weton',
                    prefixIcon: Icon(Icons.calendar_today_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  //controller: weton,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Perhitungan weton Anda: '$hasil'",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Neptu Anda: '$namaweton'",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Keterangan: '$ketweton'",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.deepOrange[800],
                      child: Text('Menu',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage(),),);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
