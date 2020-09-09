import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/timer.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});

  void _incrementTime(BuildContext context) {
    
    Timer.periodic(Duration(seconds: 1), (t){
      var timerInfo = Provider.of<Counter>(context, listen: false);
      timerInfo.incrementTime();
    }
    );
    // Provider.of<Counter>(context, listen: false).incrementTime();
  }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getTime;
    return Scaffold(
      
      // appBar: AppBar(
      //   // title: Text(title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Timer", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 35.0),),
           SizedBox(height: 10,),
            Image.asset('assets/work-timer.png'),
          
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: () => _incrementTime(context),
              child:  Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blueAccent[400],
                ),
              child: Text("Start Timer",style: TextStyle(color: Colors.amber, fontSize: 25.0, fontWeight: FontWeight.bold),),
            ),
            ),
            SizedBox(height:10),
          
          ],
        ),
      ),
    );
  }
}