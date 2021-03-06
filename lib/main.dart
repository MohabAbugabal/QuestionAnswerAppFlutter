import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';


void main() => runApp(MyApp());
//main class
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//state class
class MyAppState extends State<MyApp>
{
  var _questionsIndex = 0;

 static const questions = [

    {
      'questionTextKey': "What\'s your favorite color ? ",
      'answersKey': ['Black', 'Red', 'Green', 'White'],
    },

    {
      'questionTextKey': "What\'s your favorite animal ? ",
      'answersKey': ['Maiale', 'Polo', 'Gato', 'Cane'],
    },

    {
      'questionTextKey': "What\'s your favorite car ? ",
      'answersKey': ['Toyota', 'BMW', 'Mercedes', 'Porche'],
    },

    {
      'questionTextKey': "What\'s your favorite country ? ",
      'answersKey ': ['Germany', 'Spain', 'England', 'Italy'],
    },

   {
     'questionTextKey': "What\'s your favorite country ? ",
     'answersKey ': ['Germany', 'Spain', 'England', 'Italy'],
   },



 ];

  //function with a state method that changes the index based on the current state.
  void answerQuestion(){

        setState(() {

          _questionsIndex  = _questionsIndex + 1;
        });
        print('I was pressed');


  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("My First App"),

        ),
        body:_questionsIndex <= questions.length ? Column(

          children: [
            Question(
            questions[_questionsIndex]['questionTextKey'],
            ),

            ...(questions[_questionsIndex]['answersKey'] as List<String>).map((answer)  {

              return Answer(answerQuestion, answer);
            }).toList()
          ],

        ) : 
        Center(
          child: Text("You did it "),
          
        ),
      ),
    );

  }

}