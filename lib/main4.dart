
import 'package:flutter/material.dart';
void main(){
   return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "Ttit bar",
    theme:ThemeData(
      primarySwatch : Colors.blue,
    ),
    home: MyHomePage(),
  );
  }


}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
  
}
class _MyHomePageState extends State <MyHomePage>
{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     appBar:AppBar(title:Text('text appBare')),
        body:Container(
          alignment: Alignment.center,
         child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 400,height: 400,color: Colors.greenAccent),
            Container(width: 200,height: 200,color: Colors.blueAccent),
            Container(width: 100,height: 100,color: Colors.yellowAccent),
          ],
         ),
        ),
        );
   

  }
}