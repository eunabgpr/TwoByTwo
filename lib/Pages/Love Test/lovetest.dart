import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twobytwo/Pages/Love%20Test/LTquestion.dart';
import 'package:twobytwo/Pages/homescreen.dart';

class Lovetest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/LT/lovetest1.png"),
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
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ltquestion()),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 70.0)),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 135, 51, 51)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  elevation: MaterialStateProperty.all(10.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Color.fromARGB(255, 135, 51, 51),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Start',
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 23,
                        letterSpacing: .10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
