import 'package:belajar3/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  // const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Screen2();
            }));
          },
          child: Text('Pergi ke Screen 2'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
        ),
      ),
    );
  }
}
