import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_web/screens/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'NewPageDeneme.dart';

class Footer extends StatefulWidget {

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  launchUrl(String url) async{
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1536,
      height: 288,
      color: Colors.indigo.shade800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new HomePage()));
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/images/logo.png')),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'SOCIAL',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          const url = 'https://www.youtube.com/';
                          launchUrl(url);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Instagram'),
                            Icon(FontAwesomeIcons.instagram),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          const url = 'https://www.youtube.com/';
                          launchUrl(url);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('LinkedIn'),
                            Icon(FontAwesomeIcons.linkedinIn),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          const url = 'https://www.youtube.com/';
                          launchUrl(url);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Facebook'),
                            Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 110,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          const url = 'https://www.youtube.com/';
                          launchUrl(url);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Twitter'),
                            Icon(FontAwesomeIcons.twitter),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      'LEGAL',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      child: Text('Terms&Privacy'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'E-mail',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      onPressed: () {},
                      child: Text('herneyse@gmail.com'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    Text(
                      ' Cihannüma, Barbaros Blv. Yıldız APT ',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                    Text(
                      ' D:No:69/11, 34353 Beşiktaş/İstanbul ',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 1536,
            height: 38,
            color: Colors.pink.shade700,
            child: Center(
              child: Text('Copyright © 2022 Last Bite Games', style: TextStyle(color: Colors.indigo.shade800),),
            ),
          ),
        ],
      ),
    );
  }
}
