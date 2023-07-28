import 'package:flutter/material.dart';
import 'package:hotel_booking/AramaSayfasi.dart';
import 'package:hotel_booking/anaSayfa.dart';
import 'package:hotel_booking/hesapSayfasi.dart';
import 'package:hotel_booking/reservationSayfa1.dart';
import 'package:hotel_booking/specialDeals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sayfaListesi=[AnaSayfa(),AramaSayfa(),SpecialDeals(),HesapSayfasi()];
  int secilenIndeks =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(

        items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "",
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_sharp),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),

        ],
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (indeks){
          setState(() {
            secilenIndeks=indeks;
          });
        },
      ),

    );
  }
}
