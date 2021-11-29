import 'package:flutter/material.dart';
import 'package:assignment5med/screens/SecScreen.dart';
class FirstScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FirstScreen> {
  final TextEditingController _controller=TextEditingController();
  int value = 0;
  void _increment() {
    setState(() => value++);
  }

  void _decrement() {
    setState(() => value--);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          title: const Text('Screen Navigation Demo'),
        ),
        body:  Container(
          padding:  const EdgeInsets.all(32.0),
          child:  Column(
            children:  <Widget>[
               IconButton(icon: Icon(Icons.add), onPressed: _increment),
              Text(value.toString()),
               IconButton(icon: Icon(Icons.remove), onPressed: _decrement),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> SecondScreen(value.toString())));
                },
                child: const Text("Show Result"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
