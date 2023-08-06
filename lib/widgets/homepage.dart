import 'dart:ui';

import 'package:code_lang/widgets/decode_page.dart';
import 'package:flutter/material.dart';
import 'package:code_lang/widgets/logic1.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var editText = TextEditingController();
  String userText = '';
  String temp = '';
  var obj = new logic1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Card(
              color: Colors.blue,
              child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => decode_page()),
                        );
                      },
                      child: Text('DECODE'))),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text("Home")),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            height: 200,
            color: Colors.white,
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  controller: editText,
                  cursorColor: Colors.black,
                  maxLines: null,
                  expands: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Enter your the message to encode',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.orangeAccent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.orangeAccent))),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
            color: Colors.white,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    userText = editText.text;
                    temp = obj.logic(userText);
                  });
                },
                child: Text('ENCODE')),
          ),
          SizedBox(height: 10),
          Container(
              height: 400,
              color: Colors.white,
              child: SelectableText(
                temp,
                maxLines: null,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
