// import 'package:KGC/Widget/registerBottom.dart';
// import 'package:KGC/Widget/registerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
import 'Widget/registerHeader.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Your profile details will automatically entitle you to qualifying benefits and privileges from KWKPK';
const String screenName = "PROFILE DETAILS";


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState(); 
}

class _MyHomePageState extends State<MyHomePage> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RegisterHeader(
              description: screenDesc,
              title: screenName,
            ),
            Field (hintText: 'IC NUMBER'),
            Gender(hintText:'GENDER'),
            Ethnic(hintText: 'ETHNICITY'),
            Marital(hintText: 'MARITAL STATUS'),
            Work(hintText: 'WORK STATUS',),
            StandardTextFormField(hintText: 'EMPLOYER NAME'),
            SubmitButton(action: () {}, name: 'NEXT'),
            
          ],
          ),
        ),
      ),
    );
  }
}
