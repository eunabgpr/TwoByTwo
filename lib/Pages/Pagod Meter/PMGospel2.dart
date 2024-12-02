import 'package:flutter/material.dart';
import 'package:twobytwo/Pages/Pagod%20Meter/PMGospel1.dart';
import 'package:twobytwo/Pages/homescreen.dart';

class Pmgospel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/PM/PMGospel2.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 65.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PMGospel1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(191, 7, 185, 81),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(191, 7, 185, 81),
                          ),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      size: 30.0,
                    ),
                  ),
                  SizedBox(width: 170.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Homescreen()), //PALITAN
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(191, 7, 185, 81),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(191, 7, 185, 81),
                          ),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.home,
                      color: const Color.fromARGB(255, 247, 247, 247),
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
