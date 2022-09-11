import 'package:flutter/material.dart';
import 'package:belajar3/screen2.dart';

class Screen2 extends StatelessWidget {
  // const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali ke Screen 1'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
        ),
      ),
    );
  }
}
