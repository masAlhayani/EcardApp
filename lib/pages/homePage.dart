import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_app/services/userCard.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color1=Color(0xcc0066ff);
  Color _color2=Color(0xFF4582F0);
  TextStyle _font1=GoogleFonts.lato(fontSize: 24,letterSpacing: 1.2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:_color2 ,
      appBar: AppBar(
        title: Text("Your Accounts", style: _font1,),
        backgroundColor: _color1,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(
              Icons.more_horiz,
              size: 30.0,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserCard(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Current Balance",style: GoogleFonts.lato(fontSize: 28.0,letterSpacing: 1.2),),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:RichText(
                text: TextSpan(
                    style: GoogleFonts.lato(fontSize: 28.0,letterSpacing: 1.2,color: Colors.black),
                  text: "\$666",
                  children: [
                    TextSpan(text:".00",style: GoogleFonts.lato(fontSize: 18.0,letterSpacing: 1.2,color: Colors.black), ),
                  ]
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children:<Widget> [
                  Flexible(
                    flex:1,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0x77006600),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x88006600),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ] ,

                      ),
                      child: Stack(
                        children: [
                          Text("Update Account",style: GoogleFonts.lato(fontSize: 16.0,letterSpacing: 1.0,color: Colors.white),),
                          Align(
                            child: Icon(
                              Icons.update,
                              color: Colors.white,
                            ),
                            alignment: Alignment.bottomRight,
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xAA6699ff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x886699ff),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ] ,

                      ),

                      child: Stack(
                        children: [
                          Text("Transfer Money",style: GoogleFonts.lato(fontSize: 16.0,letterSpacing: 1.0,color: Colors.white),),
                          Align(
                            child: Icon(
                              Icons.send_to_mobile,
                              color: Colors.white,
                            ),
                            alignment: Alignment.bottomRight,
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xAAff6699),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x88ff6699),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ] ,


                      ),
                      child: Stack(
                        children: [
                          Text("Account statement",style: GoogleFonts.lato(fontSize: 16.0,letterSpacing: 1.0,color: Colors.white),),
                          Align(
                            child: Icon(
                              Icons.list_alt,
                              color: Colors.white,
                            ),
                            alignment: Alignment.bottomRight,
                          )
                        ],
                      ),
                    ),
                  ),

                  

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
