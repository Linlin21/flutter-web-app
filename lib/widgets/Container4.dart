import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Container4 extends StatefulWidget {

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 745,
          ),
          AnimatedButton(
            onPress: () {},
            height: 55,
            width: 140,
            text: 'CAREERS',
            isReverse: true,
            selectedTextColor: Colors.pinkAccent,
            transitionType: TransitionType.LEFT_TO_RIGHT,
            //textStyle: submitTextStyle,
            backgroundColor: Colors.blue,
            borderColor: Colors.purple,
            borderRadius: 50,
            borderWidth: 2,
          ),
        ],
      ),
      //width: MediaQuery.of(context).size.width,
      width: 1536.0,
      height: 900,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/indir.jpg",
          ),
        ),
      ),
    );
  }
}
