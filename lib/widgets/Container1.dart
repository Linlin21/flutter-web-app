import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_web/screens/Careers.dart';

class Container1 extends StatefulWidget {
  const Container1({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;


  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
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
      child: Column(
        children: <Widget>[
          SizedBox(
            height: screenSize.height * 0.65,
            width: screenSize.width,
          ),

          AnimatedButton(
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Careers()),
              );
            },
            height: 55,
            width: 140,
            text: 'Let\'s X',
            textStyle: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins-SemiBold'),
            isReverse: true,
            selectedTextColor: Colors.pinkAccent,
            transitionType: TransitionType.LEFT_TO_RIGHT,
            //textStyle: submitTextStyle,
            backgroundColor: Colors.grey,
            borderColor: Colors.purple,
            borderRadius: 50,
            borderWidth: 2,
          ),
        ],
      ),
      //width: MediaQuery.of(context).size.width,
      width: screenSize.width,
      height: 600,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/resim.jpg",
          ),
        ),
      ),
    );
  }
}
