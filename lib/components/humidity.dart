import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Humidity extends StatelessWidget {
  const Humidity({Key? key, required this.humidity}) : super(key: key);
  final String humidity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color(0xff1F1D47),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Color(0xFF362A84), width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.water_drop,
                    color: const Color(0xffEBEBF5).withOpacity(0.6),
                  ),
                  Text(
                    "HUMIDITY (\u0025RH)",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color(0xffEBEBF5).withOpacity(0.6),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text("$humidity\u0025",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 50,
                        color: Colors.white)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text(
                  "Similar to the actual humidity.",
                  style:
                      GoogleFonts.poppins(fontSize: 12.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
