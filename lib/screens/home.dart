import 'package:flutter/material.dart';
import 'package:tugas_final/screens/detail1.dart';

class HomePage extends StatelessWidget{
  final List nama = [
    "A320",
    "A380",
    "A350",
    "A330",
    "A318",
    

    ];
    final List gambar =[
      'lib/assets/jup1.jpg',
      'lib/assets/jup2.jpeg',
      'lib/assets/jup3.jpg',
      'lib/assets/jup4.jpg',
      'lib/assets/jup5.jpg',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AIRPLANE AIR BUS'
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
              MaterialPageRoute(builder: (context) => DetailPage1(item: nama[index], title: nama[index])));
            }),
          )
        );
      },
    );
 }
}