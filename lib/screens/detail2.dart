import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage2 extends StatefulWidget {
  final String item;
  final String title;
  const DetailPage2({Key? key, required this.item, required this.title})
      : super(key: key);

  @override
  _DetailPage2State createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  var manufacture;
  var model;
  var engine_type;
  var knots;
  var ceiling;
  var length;
  var height;
  var wing;
  var range;

  Future getWeather(String pesawat) async {
    http.Response response = await http.get(Uri.parse(
        "https://api.api-ninjas.com/v1/aircraft?manufacturer=boeing&model=$pesawat"),
        headers: {'X-Api-Key':'UqfkFH/XroACI2cz0fDLFg==U0YvhciwFsTbH66A'});
    var result = jsonDecode(response.body);
    setState(() {
      this.manufacture = result[0]['manufacturer'];
      this.model = result[0]['model'];
      this.engine_type = result[0]['engine_type'];
      this.knots = result[0]['max_speed_knots'];
      this.ceiling = result[0]['ceiling_ft'];
      this.length = result[0]['length_ft'];
       this.height = result[0]['height_ft'];
      this.wing = result[0]['wing_span_ft'];
      this.range = result[0]['range_nautical_miles'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: 
              Text(model != null ? model.toString()  : "Loading",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600))),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  manufacture != null ? manufacture.toString(): "Loading",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Tipe mesin"),
                  trailing: Text(
                      engine_type != null ? engine_type.toString()  : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Kecepatan angin"),
                  trailing: Text(
                      knots != null ? knots.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Ceiling"),
                  trailing: Text(
                      ceiling != null ? ceiling.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Panjang"),
                  trailing: Text(length != null
                      ? length.toString()
                      : "Loading"),
                ),
                 ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Tinggi"),
                  trailing: Text(height != null
                      ? height.toString()
                      : "Loading"),
                ),
                 ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Wings"),
                  trailing: Text(wing != null
                      ? wing.toString()
                      : "Loading"),
                ),
                 ListTile(
                  leading: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text("Range"),
                  trailing: Text(range != null
                      ? range.toString()
                      : "Loading"),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}