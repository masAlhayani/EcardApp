import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatefulWidget {
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  Color _color1=Color(0xFF0066ff);
  Color _color2=Color(0xFF4582F0);
  // String _font1='play';
  TextStyle _font1=GoogleFonts.lato(fontSize: 24);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xcc0066ff),
              const Color(0xff99ccff)
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x880066ff),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ] ,
          borderRadius: BorderRadius.circular(10),
        //  border: Border.all(color: _color1, width: 2.0)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Number",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "1234567890",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.white,
                    ),
                  ),

                ],
              ), //account Number + status
              Column(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Active",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.circle,
                    color: Color(0xFF00cc99),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          Text(
            "Card Holder Name",
            style: GoogleFonts.saira(fontSize: 30, color: Colors.white),
          ),
          Text(
            "1111 2222 3333 4444",
            style: GoogleFonts.changa(fontSize: 30, color: Colors.white,letterSpacing: 1.2),
          ),
          SizedBox(height:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "VALID",
                    style:
                    GoogleFonts.lato(fontSize: 14.0, color: Colors.white),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    "01/22",
                    style:
                    GoogleFonts.lato(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                children: [
                  Text(
                    "CVV",
                    style:
                    GoogleFonts.lato(fontSize: 14.0, color: Colors.white),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    "123",
                    style:
                    GoogleFonts.lato(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ],
          ),
          // Flexible(child: Text("1111 2222 3333 4444"))
        ],
      ),
    );
  }
}
