import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  final _controller = TextEditingController();
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: (() {
                Scaffold.of(context).openDrawer();
              }),
              icon: SvgPicture.asset('assets/menu_icon.svg'));
        }),
        title: Text(
          'Cloud app',
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Center(
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.85,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                  hintText: 'Search Folders',
                  prefixIcon: Container(
                    height: 24,
                    width: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
