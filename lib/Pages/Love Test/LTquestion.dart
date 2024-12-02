import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twobytwo/Pages/Love%20Test/LTSideA1.dart';
import 'package:twobytwo/Pages/Love%20Test/LTSideB1.dart';
import 'package:twobytwo/Pages/Love%20Test/lovetest.dart';

class Ltquestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/LT/LTquestion.png"),
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
                    color: const Color.fromARGB(255, 165, 41, 41), size: 30.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lovetest()),
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
                        MaterialPageRoute(builder: (context) => LTSideA1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 70.0)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 207, 98, 82)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                            fontSize: 20.0,
                            color: const Color.fromARGB(255, 253, 253, 253)),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 207, 98, 82),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Yes',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
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
                        MaterialPageRoute(builder: (context) => LTSideB1()),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 70.0)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 149, 26, 26)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color.fromARGB(255, 149, 26, 26),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'No',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
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
