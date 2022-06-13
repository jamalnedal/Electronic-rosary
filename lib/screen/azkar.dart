import 'package:flutter/material.dart';

class azkarcard extends StatefulWidget {
  const azkarcard({Key? key}) : super(key: key);

  @override
  _azkarcardState createState() => _azkarcardState();
}

class _azkarcardState extends State<azkarcard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('AZKAR'),
        ),
        body: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvF0FPptHCMaOTf1uV_RLDtD4-yQY4RlHQZA&usqp=CAU'
              ),


            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.

  }}
