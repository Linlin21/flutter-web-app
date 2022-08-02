import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_web/widgets/Application.dart';
import 'package:flutter_web/screens/FormPage.dart';
import 'package:flutter_web/widgets/NewPageDeneme.dart';
import '../screens/Careers.dart';
import 'package:flutter_web/screens/home_page.dart';
//import 'package:google_fonts/google_fonts.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new HomePage()));
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: screenSize.width / 2.7),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[0] = true
                        : _isHovering[0] = false;
                  });
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ABOUT US',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 80,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 30),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[1] = true
                        : _isHovering[1] = false;
                  });
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Application()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'GAMES',
                      style: TextStyle(
                          color: _isHovering[1]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 60,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 30),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[2] = true
                        : _isHovering[2] = false;
                  });
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'LIFE AT LAST BITE',
                      style: TextStyle(
                          color: _isHovering[2]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 155,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 30),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[3] = true
                        : _isHovering[3] = false;
                  });
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Careers()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'CAREERS',
                      style: TextStyle(
                          color: _isHovering[3]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 72,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 30),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[4] = true
                        : _isHovering[4] = false;
                  });
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          color: _isHovering[4]
                              ? Color(0xFF077bd7)
                              : Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 2,
                        width: 72,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 75),

            ],
          ),
        ),
      ),
    );
  }
}