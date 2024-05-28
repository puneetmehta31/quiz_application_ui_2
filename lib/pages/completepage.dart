// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_application_ui_2/pages/homepage.dart';

class Completed extends StatelessWidget {
  final int score;
  const Completed({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.6,
              width: screenSize.width,
              child: Stack(
                children: [
                  Container(
                    height: screenSize.height * 0.4,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      color: Color(0xffA42FC1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 85,
                        backgroundColor: Colors.white.withOpacity(.3),
                        child: CircleAvatar(
                          radius: 71,
                          backgroundColor: Colors.white.withOpacity(.4),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Your Score',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0XFFA42FC1),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: score.toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFA42FC1),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'PT',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0XFFA42FC1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 30,
                    child: Container(
                      height: screenSize.height * 0.25,
                      width: screenSize.width * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 3,
                            color: Color(0XFFA42FC1).withOpacity(.7),
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0XFFA42FC1),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '100%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0XFFA42FC1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Completion'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0XFFA42FC1),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '10',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0XFFA42FC1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Total Questions'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0XFFA42FC1),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '07',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Correct'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '03',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Wrong'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIconColumn(
                        context,
                        icon: Icons.refresh,
                        color: Color(0XFF37AFA1),
                        label: 'Play Again',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                      buildIconColumn(
                        context,
                        icon: Icons.visibility_rounded,
                        color: Color(0XFFCB9771),
                        label: 'Review Answer',
                        onTap: () {},
                      ),
                      buildIconColumn(
                        context,
                        icon: Icons.share,
                        color: Color(0XFF37AFA1),
                        label: 'Share Score',
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIconColumn(
                        context,
                        icon: Icons.file_open_rounded,
                        color: Color(0XFF37AFA1),
                        label: 'Generate PDF',
                        onTap: () {},
                      ),
                      buildIconColumn(
                        context,
                        icon: Icons.home,
                        color: Color(0XFFAD8AE8),
                        label: 'Home',
                        onTap: () {},
                      ),
                      buildIconColumn(
                        context,
                        icon: Icons.leaderboard,
                        color: Color.fromARGB(245, 201, 115, 124),
                        label: 'Leaderboard',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildIconColumn(BuildContext context,
      {required IconData icon,
      required Color color,
      required String label,
      required VoidCallback onTap}) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 35,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
