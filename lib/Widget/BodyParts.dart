import 'package:flutter/material.dart';

// 1.standard textform field ---------------------------------------------------------------------------\
class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )),
        style: TextStyle(color: Colors.white, height: 2, fontSize: 15));
  }
}

// 2. Field  ---------------------------------------------------------------------------\
class Field extends StatefulWidget {
  final String hintText;

  Field({this.hintText});

  @override
  FieldState createState() => FieldState();
}

class FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      style: TextStyle(color: Colors.white, height: 2),
    );
  }

  InputDecoration get decoration {
    UnderlineInputBorder underline() =>
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));

    Icon icon() => Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 25.0,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: underline(),
      suffixIcon: IconButton(
        onPressed: () => iconTapped,
        icon: icon(),
      ),
    );
  }

  void iconTapped() {
    setState(() {});
  }
}

// 3. Gender ---------------------------------------------------------------------------\

class Gender extends StatefulWidget {
  final String hintText;

  Gender({this.hintText});

  @override
  GenderState createState() => GenderState();
}

class GenderState extends State<Gender> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('MALE',style: TextStyle(color: Colors.white)),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('FEMALE',style: TextStyle(color: Colors.white)),
              value: 'two',
            ),
          
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('GENDER                                                          ',
          style: TextStyle(fontSize: 16, color: Colors.white),),
          
          value: _value,
        ),
        
      ],
    ));
  }

}
// 4.Ethnicity  ---------------------------------------------------------------------------\
class Ethnic extends StatefulWidget {
  final String hintText;

  Ethnic({this.hintText});

  @override
  EthnicState createState() => EthnicState();
}

class EthnicState extends State<Ethnic> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('MALAY',style: TextStyle(color: Colors.white)),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('CHINESE',style: TextStyle(color: Colors.white)),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('INDIAN',style: TextStyle(color: Colors.white)),
              value: 'three',
            ),
             DropdownMenuItem<String>(
              child: Text('OTHERS',style: TextStyle(color: Colors.white)),
              value: 'four',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('ETHNICITY                                                     ',
          style: TextStyle(fontSize: 16, color: Colors.white),),
          
          value: _value,
        ),
        
      ],
    ));
  }

  
}
// 5. Marital status ---------------------------------------------------------------------------\
class Marital extends StatefulWidget {
  final String hintText;

  Marital({this.hintText});

  @override
  MaritalState createState() => MaritalState();
}

class MaritalState extends State<Marital> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('SINGLE',style: TextStyle(color: Colors.white)),
            
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('MARRIED',style: TextStyle(color: Colors.white)),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('OTHERS',style: TextStyle(color: Colors.white)),
              value: 'three',
            ),
             
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('MARITAL STATUS                                         ',
          style: TextStyle(fontSize: 16, color: Colors.white),),
          
          value: _value,
        ),
        
      ],
    ));
  }

  
}
// 6. Work status ---------------------------------------------------------------------------\
class Work extends StatefulWidget {
  final String hintText;

  Work({this.hintText});

  @override
  WorkState createState() => WorkState();
}

class WorkState extends State<Work> {
  String _value;

  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          
          items: [
            DropdownMenuItem<String>(
              child: Text('SELF EMPLOYED',style: TextStyle(color: Colors.white)),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('NOT EMPLOYED',style: TextStyle(color: Colors.white)),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('EMPLOYED',style: TextStyle(color: Colors.white)),
              value: 'three',
            ),
            DropdownMenuItem<String>(
              child: Text('RETIRED',style: TextStyle(color: Colors.white)),
              value: 'four',
            ),
             
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('WORK STATUS                                              ',
          style: TextStyle(fontSize: 16, color: Colors.white),),
          
          value: _value,
        ),
       
      ],
    ));
  }

  
}