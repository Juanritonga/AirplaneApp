import 'package:flutter/material.dart';
import 'package:tugas_final/screens/detail2.dart';

class BoeingPage extends StatelessWidget{
  final List nama = [
    "737",
    "747",
    "777",
    "787",
    "767",
    ];
    final List gambar =[
      'lib/assets/jus1.jpg',
      'lib/assets/jus2.jpg',
      'lib/assets/jus3.jpg',
      'lib/assets/jus4.jpg',
      'lib/assets/jus5.jpg',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AIRPLANE BOEING'
        ),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: nama.length,
      itemBuilder: (_,index){
        return Card(
          color: Colors.white,
          child:ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,vertical: 10.0
            ),
            leading: CircleAvatar(
              radius: 30,
            backgroundImage: AssetImage(gambar[index]),
            ),
            title: Text(nama[index]),
            onTap: (() {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => DetailPage2(item: nama[index], title: nama[index])));
            }),
          )
        );
      },
    );
 }
}