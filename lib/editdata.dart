import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './lihatdata.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({required this.list, required this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {

 TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerHari = TextEditingController();

  void editData() {
    var url = "http://192.168.43.251/aplikasiweton/editdata.php";
    http.post(Uri.parse(url),body: {
      "id": widget.list[widget.index]['id'],
      "nama": controllerNama.text,
      "hari": controllerHari.text,
    });
  }


  @override
    void initState() {
      controllerNama= new TextEditingController(text: widget.list[widget.index]['nama'] );
      controllerHari= new TextEditingController(text: widget.list[widget.index]['hari'] );
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT DATA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      hintText: "Nama", labelText: "Nama"),
                ),
                new TextField(
                  controller: controllerHari,
                  decoration: new InputDecoration(
                      hintText: "Hari", labelText: "Hari"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Lihatdata()
                      )
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
