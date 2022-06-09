// import 'dart:convert';
// import 'dart:math';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import 'firstpage.dart';
//
// void main(){
//
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: first(),
//   ));
// }
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//
//   List imagepathlist = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _initImages();
//
//   }
//
//   Future _initImages() async {
//     // >> To get paths you need these 2 lines
//     final manifestContent = await rootBundle.loadString('AssetManifest.json');
//
//     final Map<String, dynamic> manifestMap = json.decode(manifestContent);
//     // >> To get paths you need these 2 lines
//
//     final imagePaths = manifestMap.keys
//         .where((String key) => key.contains('image/'))
//         .where((String key) => key.contains('.webp'))
//         .toList();
//
//     setState(() {
//       imagepathlist = imagePaths;
//
//       print(imagePaths);
//     });
//
//     int a = Random().nextInt(imagepathlist.length);
//
//     String imagepath = imagepathlist[a];
//     // String imagepath = "ant.webp";
//
//     print(imagepath);
//
//     String spelling = imagepath.split("/")[1].split("\.")[0];
//     print(spelling);
//
//     List answerlist = spelling.split("");
//     print(answerlist);
//
//    List toplist = List.filled(answerlist.length, "");
//
//    String abcd ="abcdefghijklmnopqrstuvwxyz";
//    List abcdlist = abcd.split("");
//     abcdlist.shuffle();
//    print(abcdlist);
//
//
//
//    List bottomlist = abcdlist.getRange(0, 10 - answerlist.length).toList();
//    print(bottomlist);
//
//    bottomlist.addAll(answerlist);
//    bottomlist.shuffle();
//    print(bottomlist);
//
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//
//         backgroundColor: Color(0xFF333147),
//         title: Text("1 PIC 1 WORD"),
//         actions: [],
//
//
//
//
//       ),
//
//       body:
//       ListView.builder(itemCount: 6,itemBuilder: (context, index) {
//
//         return InkWell(onTap: () {
//
//           Navigator.push(context, MaterialPageRoute(builder: (context){
//             return firstpage();
//           }),);
//
//
//
//
//         },
//           child: Container(
//             margin: EdgeInsets.all(.5),
//             height: 100,
//
//             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/croup_${index+1}.png")),
//           ),),
//         );
//
//
//       })
//
//
//
//     );
//   }
// }
