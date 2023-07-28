import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/beaches.dart';

class ReservationSayfa3 extends StatefulWidget {
  const ReservationSayfa3({super.key});

  @override
  State<ReservationSayfa3> createState() => _ReservationSayfa3State();
}

class _ReservationSayfa3State extends State<ReservationSayfa3> {
  Beaches Otel1 =Beaches(beachAdi: "Beach Resort Lux", beachResimAdi: "resortLux.png", beachPuan: "4.5",beachFiyat: 1480);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Reservation"),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
                child: Image.asset("resimler/reservation3.png")),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("resimler/${Otel1.beachResimAdi}"), fit:BoxFit.cover,
                )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  height: 300,
                  top: 200,
                  left: 20,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 50),
                              child: Text("${Otel1.beachAdi}",style: TextStyle(color: Colors.white,fontSize: 30,),),
                            ),
                            SizedBox(
                              width: 70,
                              height: 30,
                              child: Container(
                                child: Center(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 7,right: 7 ),
                                              child: Text("${Otel1.beachPuan}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                            ),
                                            Icon(Icons.star,color: Colors.white,),
                                          ],
                                        ),
                                      ],
                                    )),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orangeAccent, width: 0),
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
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2 people",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Standard King Room",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2 Night",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Jan 18 2019 to Jan 20 2019",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
              ],
            ),
          ),
         Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text(r"$" "${Otel1.beachFiyat} USD",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                 Spacer(),
                 Icon(Icons.sim_card_alert_outlined,color: Colors.grey,),
               ],
             ),
           ),
         ),

          SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: (){print("Complate");  },
                child: Container(
                  child: Center(child: Text("Complate",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
    );
  }
}
