import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_web/widgets/Container1.dart';
import 'package:flutter_web/widgets/top_bar_contents.dart';
import '../widgets/Footer.dart';


class Careers extends StatefulWidget {

  @override
  State<Careers> createState() => _CareersState();
}

class _CareersState extends State<Careers> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      appBar: screenSize.width <800? AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(_opacity),
        title: Text(
          'Author',
          style: TextStyle(
            color: Color(0xFF077bd7),
            fontSize: 26,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
          ),
        ),
      ):PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContents(_opacity),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        //width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              height: 450,
                            ),
                            Text('Careers', style: TextStyle(fontSize: 25, color: Colors.white,),),
                          ],
                        ),
                        //width: MediaQuery.of(context).size.width,
                        width: 1536.0,
                        height: 600,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/r.jpg",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(55.0),
                        width: 1536.0,
                        height: 600,
                        child: Row(
                          children: <Widget>[
                           // SizedBox(width: 20,height: 20,),
                            Column(
                              children: [
                                Center(
                                  child: Text(
                                    'Open Positions',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                SizedBox(width: 10,height: 10,),
                                Row(
                                  children: [

                                    DropdownButton(

                                      // Initial Value
                                      value: dropdownvalue,

                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Row(
                                            children: [
                                              Text(items),
                                              SizedBox(width: 10,height: 10,),
                                              ElevatedButton(onPressed:() {}, child: Text('Apply')),
                                            ],
                                          ),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            Container(),
                          ],
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
