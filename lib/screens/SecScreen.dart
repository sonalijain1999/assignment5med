import 'package:flutter/material.dart';



class SecondScreen extends StatefulWidget {
  SecondScreen(this.name, {Key? key}) : super(key: key);
  String name;

  @override
  _State createState() =>  _State();
}

class _State extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Show Name"),
        ),
        body:  Container(
          padding:  const EdgeInsets.all(32.0),
          child:  Column(
            children:  <Widget>[
               Text('This is 2nd screen: ${widget.name}')
            ],
          ),
        ),
      ),
    );
  }
}
