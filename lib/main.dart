import 'package:flutter/material.dart';
import 'package:aplikasiweton/register.dart';
import 'package:aplikasiweton/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Weton',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  'Selamat Datang Di Aplikasi Weton',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
              ),
              Image.asset(
                'assets/images/sampul.png',
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                      color: Colors.deepOrange[800],
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
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
                      color: Colors.deepOrangeAccent[200],
                      child: Text('Register',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
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
