import 'package:flutter/material.dart';

class   Questions extends StatelessWidget {

  final String  questionText;

 Questions(this.questionText); 

  @override
  Widget build(BuildContext context) {

    return Container(
          width: double.infinity, 
          margin: const EdgeInsets.all(10.0),
          child:Text(
               questionText,
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,)
    );
  }



}