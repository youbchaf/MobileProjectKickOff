import 'package:flutter/material.dart';

import 'Room.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff4f4f4),
        title: const Text(
          'KICK IT',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      // ignore: unnecessary_new
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffffff),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,

            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,

            // Generate 100 widgets that display their index in the List.
            children: List.generate(20, (index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xfff4f4f4),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3.0, 5.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Kick Of A 7h',
                          textAlign: TextAlign.center,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset(
                        "assets/house.png",
                        width: 70,
                      ),
                      Text(
                        '7 players Room',
                        textAlign: TextAlign.center,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(
                                      20,
                                    ),
                                    bottomRight: Radius.circular(
                                      20,
                                    ))),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Room(),
                                  ),
                                );
                              },
                              child: Center(
                                  child: Text(
                                    'JOIN',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
