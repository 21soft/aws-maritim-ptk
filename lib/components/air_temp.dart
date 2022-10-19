import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AirTemp extends StatelessWidget {
  const AirTemp({Key? key, required this.temp}) : super(key: key);
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color(0xff1F1D47),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Color(0xFF362A84), width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.thermostat,
                    color: Color(0xffEBEBF5).withOpacity(0.6),
                  ),
                  Text(
                    "AIR TEMP (\u2103)",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xffEBEBF5).withOpacity(0.6),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(temp + "\u00B0",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 50,
                        color: Colors.white)),
              ),
              Container(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(
                  "Similar to the actual temperature.",
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
