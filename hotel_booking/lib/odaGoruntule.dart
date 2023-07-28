import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/reservationSayfa1.dart';

import 'Rooms.dart';

class OdaGoruntule extends StatefulWidget {
  String otelAdi;


  OdaGoruntule({required this.otelAdi});

  @override
  State<OdaGoruntule> createState() => _OdaGoruntuleState();
}

class _OdaGoruntuleState extends State<OdaGoruntule> {


  List<String> ozellikler = ["Refundable", "Breakfact included","Wi-Fi","Air Conditioner","Bath"];

  Future<List<Rooms>> odaGetir() async{
    var odaListesi = <Rooms>[];
    var room1 = Rooms(odaAdi: "Standart King Room", odaResimAdi: "otelResim3.png", fiyat: 1480, geceSayisi: 2);
    var room2 = Rooms(odaAdi: "King Room", odaResimAdi: "otelResim3.png", fiyat: 3480, geceSayisi: 2);
    odaListesi.add(room1);
    odaListesi.add(room2);
    return odaListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.otelAdi}"),
      ),
      body: ListView(
        children: [
            Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 600,
                  child: FutureBuilder<List<Rooms>>(
                    future: odaGetir(),
                      builder: (context,snapshot){
                        if(snapshot.hasData){
                          var odaListesi=snapshot.data;
                          return ListView.builder(
                              itemCount: odaListesi?.length,
                              itemBuilder: (context,indeks){
                                var oda= odaListesi?[indeks];
                                return SizedBox(
                                  width: 400,
                                  height: 600,
                                  child: Card(
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage("resimler/${oda?.odaResimAdi}"), fit:BoxFit.cover,
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("${oda?.odaAdi}",style: TextStyle(fontSize: 25),),
                                              Icon(Icons.info,color: Colors.orange,)

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.credit_card_sharp,color: Colors.grey,),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text("Refundable",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.coffee,color: Colors.grey,),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text("Breakfact included",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.wifi,color: Colors.grey,),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text("Wi-Fi",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.bathtub,color: Colors.grey,),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text("Bath",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.air_rounded,color: Colors.grey,),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text("Air Conditioner",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(r"$ " "${oda?.fiyat}",style: TextStyle(fontSize: 30,color: Colors.black),),
                                                  Text("${oda?.geceSayisi} nights",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 200,
                                                height: 50,
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReservationSayfa1()));
                                                  },
                                                  child: Container(
                                                    child: Center(child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 20, ),)),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.black, width: 0),
                                                      gradient: LinearGradient(
                                                        begin: Alignment.centerLeft,
                                                        end: Alignment.centerRight,
                                                        colors: [Colors.orange, Colors.yellow,],
                                                      ),
                                                      borderRadius: BorderRadius.circular(10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black26,
                                                          blurRadius: 5,
                                                          spreadRadius: 1.5,
                                                          offset: Offset(5, 5),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                          );
                          }else{
                          return Center(
                          child: Container(
                          color: Colors.black,
                    ),
                           );
                              }
                        }

                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}
