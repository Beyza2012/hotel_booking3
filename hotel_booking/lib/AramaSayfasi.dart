import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/SelectedHotel.dart';


import 'beaches.dart';

class AramaSayfa extends StatefulWidget {

  const AramaSayfa({super.key});

  @override
  State<AramaSayfa> createState() => _AramaSayfaState();
}

class _AramaSayfaState extends State<AramaSayfa> {
  bool aramaYapiliyorMu= false;
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
  Future<List<Beaches>> DealsGetir() async {
    var OtelListesi=<Beaches>[];
    var Otel1 =Beaches(beachAdi: "Lux Otel with a Pool", beachResimAdi: "alt1.png", beachPuan:"4.5", beachFiyat: 700);
    var Otel2 =Beaches(beachAdi: "Sunset Hitek", beachResimAdi: "sunsetHitek.png", beachPuan:"4.2", beachFiyat: 800);
    var Otel3 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan: "4.5", beachFiyat: 900);
    OtelListesi.add(Otel2);
    OtelListesi.add(Otel1);
    OtelListesi.add(Otel3);
    return OtelListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(
            decoration: InputDecoration(
              hintText: "Search for a city, area or a hotel",
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Color.fromRGBO(242, 242, 242, 1),
              border: InputBorder.none,
            ),
                onChanged: (aramaSonucu){
              print("Arama sonucu: $aramaSonucu");
   },
        )

            :
                  Text("Search for a city, area or a hotel",style: TextStyle(color: Colors.grey,fontSize: 20),),
        actions: [
          aramaYapiliyorMu ? 
              IconButton(
                icon: Icon(Icons.cancel),
                onPressed: (){
                setState(() {
                  aramaYapiliyorMu=false;
                });

              }, color: Colors.grey)
              :
              IconButton(
              icon: Icon(Icons.search),
                onPressed: (){
                setState(() {
                  aramaYapiliyorMu=true;
                });
              },color: Colors.grey, )

        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45,bottom: 5,left: 12),
                child: Row(
                  children: [
                    Text("Recommended" , style: TextStyle(color: Colors.black,fontSize: 20,),),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 410,
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
              Padding(
                padding: EdgeInsets.only(top: 45,bottom: 5,left: 12),
                child: Row(
                  children: [
                    Text("Deals" , style: TextStyle(color: Colors.black,fontSize: 20,),),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 410,
                    height: 200,
                    child: FutureBuilder<List<Beaches>> (
                      future: DealsGetir(),
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
            ],
          )

        ],
      )

    );
  }
}
