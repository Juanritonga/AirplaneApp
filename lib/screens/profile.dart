import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget{
  const ProfilePage({Key ? key}) :super (key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('lib/assets/juju.png'),
            ),
            Text('Juan',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),),
            Text("Teknik Komputer 2020",
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold
            ),),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color:Colors.black
                ),title: Text("+62 895 2938 8788",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),),
              )
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color:Colors.black
                ),title: Text("Pematangsiantar, Sumatera Utara",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),),
              )
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color:Colors.black
                ),title: Text("Juan Ritonga",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),),
              )
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  "juanritonga@gmail.com",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }

}