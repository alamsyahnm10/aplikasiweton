import 'dart:convert';
import 'dart:async';
import 'package:aplikasiweton/menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './detail.dart';
import 'menu.dart';

class Lihatdata extends StatefulWidget {
  @override 
  _LihatdataState createState() => new _LihatdataState();
}

class _LihatdataState extends State<Lihatdata> {
  
  Future<List> getData() async{
    var url = "http://192.168.43.251/aplikasiweton/lihatdata.php";
    final response = await http.post(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Halaman Data',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.orangeAccent,
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.menu),
        onPressed: ()=>Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context)=> new MenuPage(),
          )
        ),
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
          // ignore: unnecessary_new
          ? new ItemList(list: snapshot.data??[],)
          : new Center( child: new CircularProgressIndicator(),);
        },
      )
    );
  }
}

class ItemList extends StatelessWidget {
  
  final List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list==null ? 0 : list.length,
      itemBuilder: (context, i){
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context)=> new Detail(list:list, index:i,)
              )
            ),
            child: new Card(
              color: Colors.orangeAccent[400],
              child: new ListTile(
                title: new Text(list[i]['nama']),
                leading: new Icon(Icons.widgets),
                subtitle: new Text("Hari Weton: ${list[i]['hari']}"),
              ),
            ),
          ), 
        );
      },
    );
  }
}