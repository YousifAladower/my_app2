
import 'package:flutter/material.dart';
void main(){
   return runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
  
}
class _MyAppState extends State <MyApp>
{
  int _counter=0;
  void _incrementConter()
  {
    setState(() {
      _counter++;  
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
     appBar:AppBar(title:Text('text appBare')),
        body:Container(
          alignment: Alignment.center,
          child:Column(
            children: <Widget>[
                        Text("hello world"),
                       Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                       )
            ],
            
        ),
        
         ),
         floatingActionButton:FloatingActionButton (
          onPressed:_incrementConter ,
          child:Icon(Icons.add),backgroundColor:Colors.red,),
      ),
    );
   

  }
}