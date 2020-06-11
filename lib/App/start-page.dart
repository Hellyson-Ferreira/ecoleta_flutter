import 'package:ecoleta_flutter/App/home-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFF0F0F5),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/home-background.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 137, left: 40, right: 87),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 87,
                  ),
                  child: Container(
                    child: SvgPicture.asset('assets/logo2.svg'),
                  ),
                ),
                Text(
                  'Seu marketplace\nde coleta de resíduos.',
                  style: GoogleFonts.ubuntu(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    //height: 1,
                    color: Color(0xFF322153),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Ajudamos pessoas a encontrarem\n pontos de coleta de forma eficiente.',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF6C6C80),
                  ),
                ),
//                 TextFormField(
//                   keyboardType: TextInputType.visiblePassword,
//                   autofocus: false,
//                   decoration:InputDecoration(
//                 //labelText: "Enter Email",
//                 fillColor: Colors.white,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25.0),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
// )
//                 ),
              ],
            ),
          ),
          //
          Positioned(
            bottom: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                height: 55,
                width: 295,
                child: RaisedButton(
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        child: Image.asset('assets/arrow.png'),
                        decoration: BoxDecoration(
                          color: Color(0xff2FB86E),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ),
                      Container(
                        width: 239,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xff34CB79),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Entrar',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
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
