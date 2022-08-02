import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_web/screens/Careers.dart';

class Container7 extends StatefulWidget {
  const Container7({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;


  @override
  State<Container7> createState() => _Container7State();
}



class _Container7State extends State<Container7> {
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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Container(
      width: screenSize.width,
      height: 600,
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(14.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              children: <Widget>[
                Image.asset('assets/images/curr.png'),
                Image.asset('assets/images/curr.png'),
                Image.asset('assets/images/curr.png'),
                Image.asset('assets/images/curr.png'),

              ],
            ),
          ),

          SizedBox(
            height: screenSize.width*0.02,
          ),
          Expanded(child: Text(
            'Life at X',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins-SemiBold',
                fontSize: 25),
          ),),





        ],
      ),

    );
  }
}
