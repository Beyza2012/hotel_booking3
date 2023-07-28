import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/reservationSayfa3.dart';

class ReservationSayfa2 extends StatefulWidget {
  const ReservationSayfa2({super.key});

  @override
  State<ReservationSayfa2> createState() => _ReservationSayfa2State();
}

class _ReservationSayfa2State extends State<ReservationSayfa2> {
  bool kartKayit = false;
  var tfController = TextEditingController();
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
                child: Image.asset("resimler/reservation2.png")),
          ),
          SizedBox(
            width: 300,
            height: 200,
            child: Container(
                child: Image.asset("resimler/kart.png")),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 8),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                          controller: tfController,
                          decoration: InputDecoration(
                            hintText: "Expriy",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            border: InputBorder.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                          controller: tfController,
                          decoration: InputDecoration(
                            hintText: "CVV",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            border: InputBorder.none,
                          )
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 8),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              CheckboxListTile(
                title: Text("Save this credit card" ,style: TextStyle(color: Colors.grey),),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: kartKayit,
                  activeColor: Colors.white,
                  checkColor: Colors.grey,
                  onChanged: (bool? veri){
                  print("kart kayıt seçildi");
                  setState(() {
                    kartKayit = veri!;
                  });
              }),
              Padding(
                padding:EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReservationSayfa3()));
                    },
                    child: Container(
                      child: Center(child: Text("Go to Payment",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
                ),
              )
            ],

          ),

        ],
      ),
    );
  }
}
