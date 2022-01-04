import 'package:aplikasiweton/lihatdata.dart';
import 'package:flutter/material.dart';
import './editdata.dart';
import './lihatdata.dart';
import 'package:http/http.dart' as http;

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({required this.index,required this.list});
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> {
  void deleteData(){
    var url = "http://192.168.43.251/aplikasiweton/hapusdata.php";
    http.post(Uri.parse(url),body: {
      'id': widget.list[widget.index]['id']
    });
  }


  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Apakah Anda yakin ingin menghapus? '${widget.list[widget.index]['nama']}'"),
      actions: <Widget>[
        new RaisedButton(
          child: new Text("Hapus", style: new TextStyle(color: Colors.black),),
          color: Colors.red,
          onPressed: (){
            deleteData();
            Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context)=> new Lihatdata(),
            )
          );
          },
        ),
        new RaisedButton(
          child: new Text("Batal", style: new TextStyle(color: Colors.black),),
          color: Colors.green,
          onPressed: ()=> Navigator.pop(context),
        ),
      ],
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['nama']}")),
      backgroundColor: Colors.orangeAccent,
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          color: Colors.orangeAccent[400],
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text(widget.list[widget.index]['nama'], style: new TextStyle(fontSize: 20.0),),
                new Text("Hari Weton: ${widget.list[widget.index]['hari']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),

                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text("EDIT"),
                      textColor: Colors.white,
                      color: Colors.deepOrange[800],
                      onPressed: ()=>Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new EditData(list: widget.list, index: widget.index),
                        )
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    new RaisedButton(
                      child: new Text("DELETE"),
                      textColor: Colors.white,
                      color: Colors.deepOrangeAccent[200],
                      onPressed: ()=>confirm(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}