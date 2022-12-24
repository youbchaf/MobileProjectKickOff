import 'package:flutter/material.dart';

class OpenRoom extends StatefulWidget {
  const OpenRoom({Key? key}) : super(key: key);

  @override
  State<OpenRoom> createState() => _OpenRoomState();
}

class _OpenRoomState extends State<OpenRoom> {
  List<bool> _isChecked = [false, false, false, false, false];
  List<bool> _isChecked2 = [
    false,
    false,
    false,
  ];
  List<String> _teamA = [
    'Ayoub Chafik',
    'Ait all Mohamed',
    'Ayoub Boukdir',
    'Hamza Natoli',
    'Sara Smlali'
  ];
  List<String> _teamB = [
    'Ahmed Badia',
    'Ait blla Mohamed',
    'Samir Bomiz',
  ];
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/cover.png'),
                      fit: BoxFit.cover)),
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                    gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.4),
                    ])),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "KICK OFF A 7H",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.online_prediction,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Owner ID :",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "175586255",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Data & Time",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "15 Dec 2022 , 10:20 AM",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Players & Team",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "7 Players",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Club",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Not Specified",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "BOOK A PITCH",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Team A",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return CheckboxListTile(
                                value: _isChecked[index],
                                title: Text(_teamA[index]),
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked[index] = value!;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Team B",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return CheckboxListTile(
                                value: _isChecked2[index],
                                title: Text(_teamB[index]),
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked[index] = value!;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "ADD PLAYAER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "DELETE PLAYAER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
