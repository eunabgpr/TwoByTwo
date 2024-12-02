import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twobytwo/Pages/Hope%20Test/hopetest.dart';
import 'package:twobytwo/Pages/Love%20Test/lovetest.dart';
import 'package:twobytwo/Pages/Pagod%20Meter/pagodmeter.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Homescreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container()), // Spacer to push buttons to the bottom
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hopetest()),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 60.0),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(244, 149, 6, 1),
                  ),
                  elevation: MaterialStateProperty.all(10.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                        color: Color.fromRGBO(244, 149, 6, 1),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Hope Test',
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 23,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lovetest()),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 64.0),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 230, 57, 38),
                  ),
                  elevation: MaterialStateProperty.all(10.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                        color: Color.fromARGB(255, 230, 57, 38),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Love Test',
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 165.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagodmeter()),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 43.0),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 165, 187, 26),
                  ),
                  elevation: MaterialStateProperty.all(10.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                        color: Color.fromARGB(255, 165, 187, 26),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Pagod Meter',
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 23,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
