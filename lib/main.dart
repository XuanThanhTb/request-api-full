import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:request_api_equeck/apiGet/apiGet.dart';
import 'package:request_api_equeck/model/equeck_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Request Api',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: SendData(),
      ),
    );
  }
}

class SendData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SendDataState();
  }
}

class SendDataState extends State<SendData> {
  var _dio = Dio();
  List<dynamic> listData;
  List<Equeck> github = [];
  String data;
  Equeck demoG;

  _getApiBases() async {
    ApiService()
        .getGitHubs(
            "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_week.geojson")
        .then((response) {
          // debugger();
      if (!mounted) {
        return;
      }
     
        setState(() {
          github = response.data.listItem;
        });
    });
  }

  _onText(){
    return Container(
      child: Column(
        children: github.map((item) => Text(item.properties.place)).toList(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('data'),
              onPressed: _getApiBases,
            ),
            _onText()
          ],
        ),
      ),
    );
  }
}
