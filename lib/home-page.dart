import 'package:ecoleta_flutter/App/components/map-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App/components/itens.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    ['Resíduos Eletrônicos', 'eletronicos.svg'],
    ['Resíduos Orgânicos', 'organicos.svg'],
    ['Óleo de Cozinha', 'oleo.svg'],
    ['Lâmpadas', 'lampadas.svg'],
    ['Pilhas e Baterias', 'baterias.svg'],
    [' Papéis e Papelão', 'papeis-papelao.svg'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 27,
            //top: 47
          ),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              child: SvgPicture.asset(
                'assets/Logout.svg',
              ),
            ),
          ),
        ),
      ),
      // body:  MapWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                '😀 Bem vindo.',
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff322153),
                ),
              ),
            ),
            Text(
              'Encontre no mapa um ponto de coleta.',
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: Color(0xff6C6C80),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                bottom: 8
              ),
              child: MapWidget(),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 108,
                width: 4000,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return Items(title: items[index][0], img: items[index][1]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
