
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_page.dart';

class SplashScreen extends StatelessWidget {

  pushToHomePage(BuildContext context) async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    pushToHomePage(context);
    return Scaffold(

      backgroundColor: Colors.black45,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle,size: 150,color: Color(0xffF76600),),
              SizedBox(height: 40,),
              Text('To-do App',style: TextStyle(color: Color(0xff30384c),fontSize: 40,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top:280.0),
                child: Text("Made by Sumit Kumar Sahu",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w900)),
              )
            ],
          )
      ),
    );
  }
}
