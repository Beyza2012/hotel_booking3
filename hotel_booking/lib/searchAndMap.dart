import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAndMap extends StatefulWidget {
  String arama;

  SearchAndMap(this.arama);

  @override
  State<SearchAndMap> createState() => _SearchAndMapState();
}

class _SearchAndMapState extends State<SearchAndMap> {
  bool aramaYapiliyorMu =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.arama}"),

      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
