import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  // const pertanyaan({ Key? key }) : super(key: key);
  var pertanyaan;

  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          pertanyaan,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
