 
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
    
    bool securpassowrd=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

     appBar:AppBar(title:Text('text appBare')),
        body:Container(
          child: SingleChildScrollView(
            child:Column(
          children: [
            SizedBox(height: 20),
            Container(
              child :TextField ( 
                decoration: InputDecoration(
                  labelText: "UserName",
                  labelStyle: TextStyle(fontFamily: AutofillHints.transactionAmount),
                  hintText: "UserName",
                  icon: Icon(Icons.person_2_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 5,color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(60.0)
                  )
                )
            )
            ),
            Container(
              child :TextField ( 
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontFamily: AutofillHints.transactionAmount),
                  hintText: "enter Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
            )
            ),
            Container(
              child :TextField ( 
                decoration: InputDecoration(
                  labelText: "password",
                  labelStyle: TextStyle(fontFamily: AutofillHints.transactionAmount),
                  hintText: "enter password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      securpassowrd? Icons.visibility:Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                           securpassowrd= !securpassowrd;
                        });
                      }
                    ),
                  ),
                    obscureText: securpassowrd,
                keyboardType: TextInputType.visiblePassword,
              ),
              
            )
          ,
            Container(
              child :TextField ( 
                decoration: InputDecoration(
                  labelText: "phoneNumber",
                  labelStyle: TextStyle(fontFamily: AutofillHints.transactionAmount),
                  hintText: "enter phoneNumber",
                  icon: Icon(Icons.phone_android),
                ),
                keyboardType: TextInputType.number,
            )
            )
          ],
        ) ),
        )
       
      ),
    );
   

  }
}