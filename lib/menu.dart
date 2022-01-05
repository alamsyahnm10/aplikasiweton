import 'package:aplikasiweton/tambahdata.dart';
import 'package:flutter/material.dart';
import 'tambahdata.dart';
import 'dashboard.dart';
import 'lihatdata.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aplikasi Weton',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Silahkan Pilih Menu',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'assets/images/menu.png',
                height: 200,
              ),
              Padding(padding: const EdgeInsets.all(8.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.deepOrange[800],
                      child: Text('Tambah Data',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tambahdata(),
                          ),
                        );
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard(),),);
                      },
                    ),
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.all(8.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.deepOrange[800],
                      child: Text('Perhitungan Weton',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.all(8.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.deepOrange[800],
                      child: Text('Lihat Data',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lihatdata(),
                          ),
                        );
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
