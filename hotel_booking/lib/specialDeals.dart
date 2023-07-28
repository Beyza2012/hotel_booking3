import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialDeals extends StatefulWidget {
  const SpecialDeals({super.key});

  @override
  State<SpecialDeals> createState() => _SpecialDealsState();
}

class _SpecialDealsState extends State<SpecialDeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("resimler/special.png"), fit:BoxFit.cover,
                    )
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        height: 300,
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Specials Deals",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("Nov 12-24",style: TextStyle(fontSize: 20,color: Colors.white60,fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: SizedBox(
                                    width: 300,
                                    height: 50,
                                    child: GestureDetector(
                                      onTap: (){print("Search a room tıklandı");  },
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
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("Please rate your stay at Venice"),
                        subtitle: Text("Royal,Venice,Italy"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){
                        },
                      ),
                      ListTile(
                        title: Text("Your stay at Hotel Venice Royal is"),
                        subtitle: Text("booked in 2 days!"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){
                        },
                      ),
                      ListTile(
                        title: Text("You have earned 3000 loyalty points!"),
                        subtitle: Text("See how to use them here"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){
                        },
                      )

                    ],
                  ),
                ),
              )

            ],
          ),
        ],
      )
    );
  }
}
