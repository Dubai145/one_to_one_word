import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List someImages = [];
  String? imagepath;
  List answerlist = [];
  List toplist = [];
  List bottomlist = [];

  get back => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _initImages();
  }
  Future _initImages() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('images/'))
        .where((String key) => key.contains('.webp'))
        .toList();

    setState(() {
      someImages = imagePaths;
      print(someImages);
    });

    int rr = Random().nextInt(someImages.length);

    imagepath = someImages[rr];
    // String imagepath = "images/bag.webp";

    print(imagepath);

    // List<String> list1 = imagepath.split("/");
    // print(list1);
    // String s1 = list1[1];
    // List<String> list2 = s1.split("\.");
    // print(list2);
    // String s2 = list2[0];
    // print(s2);
    String spelling = imagepath!.split("/")[1].split("\.")[0];
    print(spelling);

    answerlist = spelling.split("");
    toplist = List.filled(answerlist.length, "");
    print(answerlist);

    String abcd = "abcdefghijklmnopqrstuvwxyz";

    List abcdlist = abcd.split("");
    print(abcdlist);
    abcdlist.shuffle();
    print(abcdlist);

    bottomlist = abcdlist.getRange(0, 10 - answerlist.length).toList();

    print(bottomlist);

    bottomlist.addAll(answerlist);
    print(bottomlist);
    bottomlist.shuffle();
    setState(() {
      print(bottomlist);
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar
          (backgroundColor:Color(0xFFfed47e) ,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.account_balance_wallet),color: Colors.black,)],
        ),



      ),

        onWillPop: back);
  }
}