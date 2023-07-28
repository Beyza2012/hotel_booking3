import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/reservationSayfa2.dart';

class ReservationSayfa1 extends StatefulWidget {
  const ReservationSayfa1({super.key});

  @override
  State<ReservationSayfa1> createState() => _ReservationSayfa1State();
}

class _ReservationSayfa1State extends State<ReservationSayfa1> {
  var tfController = TextEditingController();
  var firstName="";
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
             child: Image.asset("resimler/reservation1.png")),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Email Adress",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Adress",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Post Code",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Country",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                      hintText: "Mobile Phone",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      border: InputBorder.none,
                    )
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReservationSayfa2()));
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
          )

        ],
      )
    );
  }
}
