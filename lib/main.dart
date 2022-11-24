import 'package:flutter/material.dart';
import 'package:tugas_final/screens/boeing.dart';
import 'package:tugas_final/screens/detail2.dart';
import 'package:tugas_final/screens/profile.dart';
import 'screens/nav.dart';
import 'screens/detail1.dart';
import 'screens/home.dart';
import 'screens/splashscreen.dart';


void main() async {
  runApp(const Myapp());
}

class MyRootApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: SplashScreen(),
    );
  }
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesawat Terbang',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/nav': (context) => const Navigation(),
        '/home': (context) => HomePage(),
        '/boeing': (context) => BoeingPage(),
        '/detail1': (context) => const DetailPage1(item: '', title: ''),
        '/detail2': (context) => const DetailPage2(item: '', title: ''),
        '/profile': (context) => ProfilePage(),
        '/about': (context) => ProfilePage(),
      },
    );
  }
}