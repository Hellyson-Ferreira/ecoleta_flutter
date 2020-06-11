import 'package:ecoleta_flutter/App/start-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF0F0F5),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              SplashScreen(
                seconds: 4,
                backgroundColor: Colors.white,
                navigateAfterSeconds: StartPage(),
                loaderColor: Colors.white,
              ),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/logo.svg',
                        width: 123.25,
                        height: 112.75,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Carregando app...',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF6C6C80) 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
