import 'package:flutter/material.dart';
import 'package:twobytwo/Pages/Hope%20Test/sideA2.dart';
import 'package:twobytwo/Pages/Hope%20Test/sideA4.dart';

class SideA3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/HT/SideA3.png"),
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
                        MaterialPageRoute(builder: (context) => SideA2()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 211, 160, 20),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 211, 160, 20),
                          ),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(width: 120.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SideA4()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 211, 160, 20),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 211, 160, 20),
                          ),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
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
