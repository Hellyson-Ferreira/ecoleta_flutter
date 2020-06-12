import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatefulWidget {
  @required
  final String img;
  @required
  final String title;

  const Items({Key key, this.img, this.title}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          width: 104,
          height: 104,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, 
                colors: [
                   isSelected?Color(0xFFFFFFFF):Color(0xffE1FAEC),
                   Color(0xffE1FAEC),
                ], 
              ),
             
              border: Border.all(
                  color: isSelected ? Color(0xff34CB79) : Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 22, bottom: 14, left: 22, right: 22),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SvgPicture.asset(
                    'assets/${widget.img}',
                    width: 32,
                    height: 32,
                  ),
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.roboto(
                    fontSize: 11,
                    color: Color(0xff322153),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
