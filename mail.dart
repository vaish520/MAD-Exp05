import 'package:flutter/material.dart';

class Mailpage extends StatelessWidget {
  const Mailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Screen"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.purple,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Mail Screen'),
        ),
      ),
    );
  }
}
