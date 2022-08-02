import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/top_bar_contents.dart';
import 'Footer.dart';
import 'package:flutter_web/screens/home_page.dart';
import 'package:file_picker/file_picker.dart';

class Application extends StatefulWidget {
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  bool value = false;

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
    final double height = 800.0;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        appBar: screenSize.width < 800
            ? AppBar(
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
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 70),
                child: TopBarContents(_opacity),
              ),
        key: _scaffoldKey,
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 900,
                //padding: const EdgeInsets.only(left: 40, right: 40),
                child: Form(
                  key: formKey, //key for form
                  child: SizedBox(
                    width: 900,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.04),
                        Row(
                          children: [
                            Text("CV/Resume"),
                            SizedBox(width: 30.0),
                            ElevatedButton(
                              onPressed: () async {
                                // FilePickerResult? result = await FilePicker.platform.pickFiles();
                                //
                                // if (result != null) {
                                //   File file = File(result.files.single.path);
                                // } else {
                                //   // User canceled the picker
                                // }
                              },
                              child: Text("Upload file"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Full Name'),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              return "Enter a valid name!";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'E-mail'),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}')
                                    .hasMatch(value)) {
                              return "Enter a valid e-mail!";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Phone'),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[+]*[(]{0,1}[0,9]{1,5}[)]{0,1}[-\s\./0-9]+$')
                                    .hasMatch(value)) {
                              return "Enter a valid phone number!";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'LinkedIn URL'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter your LinkedIn URL!";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Other Links'),
                          /*validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter a valid name";
                          } else {
                            return null;
                          }
                        },*/
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        SizedBox(
                          height: 120,
                          width: 900,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Additional Information'),
                            expands: true,
                            maxLines: null,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Checkbox(
                                value: value,
                                onChanged: (value) =>
                                    setState(() => this.value = value!),
                              ),
                              Text(
                                'Onay',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 400,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    final snackBar =
                                        SnackBar(content: Text('Applied'));
                                    _scaffoldKey.currentState!
                                        .showSnackBar(snackBar);
                                  }
                                },
                                child: Text('APPLY'),
                              ),
                            ]),
                        SizedBox(
                          height: height * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Footer(),
            ],
          ),
        ));
  }
}
