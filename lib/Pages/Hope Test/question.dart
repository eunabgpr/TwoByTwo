import 'package:flutter/material.dart';
import 'package:twobytwo/Pages/Hope%20Test/SideB1.dart';
import 'package:twobytwo/Pages/Hope%20Test/hopetest.dart';
import 'package:twobytwo/Pages/Hope%20Test/sideA1.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/HT/question.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1.0, -0.9),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 129, 101, 1), size: 30.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hopetest()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SideA1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 70.0)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 211, 160, 20)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 211, 160, 20),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Yes',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 23,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SideB1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 70.0)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 211, 96, 20)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 211, 96, 20),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'No',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 23,
                          letterSpacing: 0.10,
                        ),
                      ),
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
