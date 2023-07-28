import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HesapSayfasi extends StatefulWidget {
  const HesapSayfasi({super.key});

  @override
  State<HesapSayfasi> createState() => _HesapSayfasiState();
}

class _HesapSayfasiState extends State<HesapSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 7,
                  spreadRadius: 0.5,
                  //offset: Offset(5, 5),
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 40,bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("resimler/user.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Text("Samantha Doe",style: TextStyle(color: Colors.black,fontSize: 20,),),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){print("Your Favourites tıklandı");},
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 40,left: 20),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                    Icon(Icons.heart_broken,size: 25,color: Colors.orange,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Your Favourites",style: TextStyle(color: Colors.black,fontSize: 20,)),
                    )
                    ], ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){print("Payment tıklandı");},
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.payment,size: 25,color: Colors.orange,),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Payment",style: TextStyle(color: Colors.black,fontSize: 20,)),
                    )
                  ], ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){print("Help tıklandı");},
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.help,size: 25,color: Colors.orange,),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Help",style: TextStyle(color: Colors.black,fontSize: 20,)),
                    )
                  ], ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){print("Promations tıklandı");},
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.celebration_outlined,size: 25,color: Colors.orange,),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Promations",style: TextStyle(color: Colors.black,fontSize: 20,)),
                    )
                  ], ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){print("Settings tıklandı");},
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.settings,size: 25,color: Colors.orange,),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 20,)),
                    )
                  ], ),
              ),
            ),
          ),


         ]
      ),
    );
  }
}
