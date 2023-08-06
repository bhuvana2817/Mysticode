import 'package:code_lang/widgets/decode1.dart';
import 'package:flutter/material.dart';

class decode_page extends StatefulWidget {
  const decode_page({super.key});

  @override
  State<decode_page> createState() => _decode_pageState();
}

class _decode_pageState extends State<decode_page> {
  var editText = TextEditingController();
  String userText = '';
  String temp = '';
  var obj = new decode1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decode'),
      ),
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
                      hintText: 'Enter your the message to decode',
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
                child: Text('DECODE')),
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
