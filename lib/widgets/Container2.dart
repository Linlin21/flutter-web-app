import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {

  const Container2({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;


  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {

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

  String sample = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras condimentum vel lectus eget auctor. Aliquam eu tincidunt nibh. Duis non convallis lorem. Nam sit amet commodo est. Nulla facilisi. Duis et nulla a mauris facilisis consequat id ac odio. Aliquam aliquam lorem vel ipsum auctor aliquam. Nam lacinia, ex quis fermentum aliquet, metus sem pulvinar nisl, non rutrum mauris nulla eleifend arcu. Curabitur posuere aliquam dignissim. Suspendisse venenatis velit ut eros rhoncus molestie. Sed a interdum nibh. Suspendisse a maximus odio.';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Expanded(
                child: Image.asset('assets/images/indir.jpg'),
                flex: 2,
              ),
              Expanded(
                child: Text(
                    sample,
                    overflow: TextOverflow.clip),
                flex: 1,
              ),
              Spacer(
                flex: 1,
              ),

            ],
            // twoColumn: constraints.maxWidth > 700,
          );
        },
      ),
      height: 700.0,
      //width: 500.0,
      color: Colors.pink[50],

    );
  }
}
