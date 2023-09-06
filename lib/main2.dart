
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
    var str="";
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

     appBar:AppBar(title:Text('text appBare')),
        body:Column(
          children: <Widget>[
                        Text(
                          str,
                          style:TextStyle(),
                        ),
                        TextButton(
                          onPressed: (){},
                         style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ))),
                           child: Text('click'),
                          
                        ),
                 ElevatedButton(
              onPressed: () {
                setState(() => str = "hello");
              },
              child: Text('Click me'),
            ),   
                      
            ],
        )
       
      ),
    );
   

  }
}