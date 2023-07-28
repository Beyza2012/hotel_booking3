import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/SelectedHotel.dart';
import 'package:hotel_booking/searchAndMap.dart';

import 'beaches.dart';

class AnaSayfa extends StatefulWidget {


  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String aramaSonucu = " ";
  var tfControllerPlace = TextEditingController();
  var tfControllerDate = TextEditingController();
  Future<List<Beaches>> OtelGetir() async {
    var OtelListesi=<Beaches>[];
    var Otel1 =Beaches(beachAdi: "Lux Otel with a Pool", beachResimAdi: "alt1.png", beachPuan:"4.5", beachFiyat: 700);
    var Otel2 =Beaches(beachAdi: "Sunset Hitek", beachResimAdi: "sunsetHitek.png", beachPuan:"4.2", beachFiyat: 800);
    var Otel3 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan: "4.5", beachFiyat: 900);
    OtelListesi.add(Otel1);
    OtelListesi.add(Otel2);
    OtelListesi.add(Otel3);
    return OtelListesi;
  }

  var guestsListe= <String>[];
  String selectedGuests= "Guests";
  var nightListe= <String>[];
  String selectedNight= "Night";
  @override
  void initState() {
    super.initState();
    guestsListe.add("Guests");
    guestsListe.add("1");
    guestsListe.add("2");
    guestsListe.add("3");
    guestsListe.add("4");
    guestsListe.add("5");
    guestsListe.add("6");
    nightListe.add("Night");
    nightListe.add("1");
    nightListe.add("2");
    nightListe.add("3");
    nightListe.add("4");


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("resimler/img.png"), fit:BoxFit.cover,
                )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  height: 300,
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 54, 54, 3),

                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0),
                      ),),
                  ),
                ),
                 ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        onChanged: (place){

                        },
                        controller: tfControllerPlace,
                        decoration: InputDecoration(
                          hintText: "Place",
                          hintStyle: TextStyle(color: Colors.white38),
                          filled: true,//arka plana renk verebilmek için
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.brown,width: 0.1),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))//textfield kenar ovalliği
                          ),
                        ),  ),
                    ),
                    Spacer(),
                    DropdownButton<String>(
                      value: selectedGuests,
                      items: guestsListe.map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text("$value",style: TextStyle(color: Colors.white38,fontSize: 20),),
                        );


                      }).toList(),
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (secilenveri){
                        setState(() {
                          selectedGuests = secilenveri!;
                        });

                      },
                    ),
                  ],


                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        onChanged: (date){

                        },
                        controller: tfControllerDate,
                        decoration: InputDecoration(
                          hintText: "Date",
                          hintStyle: TextStyle(color: Colors.white38),
                          filled: true,//arka plana renk verebilmek için
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))//textfield kenar ovalliği
                          ),
                        ),

                      ),
                    ),
                    Spacer(),
                    DropdownButton<String>(
                      value: selectedNight,
                      items: nightListe.map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text("$value",style: TextStyle(color: Colors.white38,fontSize: 20),),
                        );


                      }).toList(),
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (secilenveri){
                        setState(() {
                          selectedNight = secilenveri!;
                        });

                      },
                    ),
                  ],

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 50,
                        child: GestureDetector(
                          onTap: (){
                            print("Search a room tıklandı");
                            aramaSonucu = "${tfControllerPlace.text} - ${selectedGuests} guests ${tfControllerDate.text}  ${selectedNight} night ";

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchAndMap(aramaSonucu)));
                            },
                          child: Container(
                            child: Center(child: Text("Search a room",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
                        )
                    ),
                  ],

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45,bottom: 5,left: 12),
                child: Row(
                  children: [
                    Text("Recommended" , style: TextStyle(color: Colors.black,fontSize: 20,),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    SizedBox(
                      width: 400,
                      height: 200,
                      child: FutureBuilder<List<Beaches>> (
                        future: OtelGetir(),
                        builder: (context,snapshot){
                          if(snapshot.hasData){
                            var otelListesi=snapshot.data;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: otelListesi?.length,
                              itemBuilder: (context,indeks){
                                var otel= otelListesi?[indeks];
                                return SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedHotel(hotel: otel!)));
                                    },
                                    child: Card(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage("resimler/${otel?.beachResimAdi}"), fit:BoxFit.cover,
                                            )
                                        ),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Positioned(
                                              height: 300,
                                              top: 110,
                                              left: 0,
                                              right: 0,
                                              child: Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("${otel?.beachAdi}",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("Dubai",style: TextStyle(fontSize: 20,color: Colors.white60,fontWeight: FontWeight.bold),),
                                                          Padding(
                                                            padding: EdgeInsets.only(left: 90),
                                                            child: Text(r"$" "${otel?.beachFiyat}-",style: TextStyle(fontSize: 20,color: Colors.white60,fontWeight: FontWeight.bold),),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(left: 20),
                                                            child: Text("${otel?.beachPuan}",style: TextStyle(fontSize: 20,color: Colors.white60,fontWeight: FontWeight.bold),),
                                                          ),
                                                          Icon(Icons.star,color: Colors.grey,)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ))

                                        ],
                                      ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }else{
                            return Center(
                              child: Container(
                                color: Colors.black,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    ],
                ),
              ),

            ],
          )
        ],
      ),
    );

  }
}
