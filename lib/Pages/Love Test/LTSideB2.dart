import 'package:flutter/material.dart';
import 'package:twobytwo/Pages/Love%20Test/LTSideB1.dart';
import 'package:twobytwo/Pages/Love%20Test/LTSideB3.dart';

class LTSideB2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/LT/LTSideB2.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LTSideB1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 149, 26, 26),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 149, 26, 26),
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
                  SizedBox(width: 120.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LTSideB3()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 149, 26, 26),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 149, 26, 26),
                          ),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: const Color.fromARGB(255, 255, 255, 255),
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
