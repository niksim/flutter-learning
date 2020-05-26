import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppTest();
  }
}

class MyAppTest extends State<MyApp>{
  var questionIndex=0;

  void answerQuestion() {
    setState(() {
      questionIndex=questionIndex+1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions=['What is Fav color ?','What is Fav Food ?'];
    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Red'),
            onPressed: answerQuestion,              // No parentesis , as it will work as pointer
          ),
          RaisedButton(
            child: Text('Blue'),
            onPressed: answerQuestion,              // No parentesis , as it will work as pointer
          ),
          RaisedButton(
            child: Text('Orange'),
            onPressed: answerQuestion,              // No parentesis , as it will work as pointer
          )
        ],
      ),
    ));
  }

}
