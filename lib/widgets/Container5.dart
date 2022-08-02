import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Container5 extends StatefulWidget {
  const Container5({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      width: 1536.0,
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image(image: AssetImage(
                    "assets/images/indir.jpg",
                  ),),
                ),
                Expanded(
                  child: Image(image: AssetImage(
                    "assets/images/indir.jpg",
                  ),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image(image: AssetImage(
              "assets/images/indir.jpg",
            ),),
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
