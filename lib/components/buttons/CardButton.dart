import 'package:flutter/material.dart';

class CardButton extends Card {
  CardButton({onPressed, icon, title, subTitle, context}) : super (
    color: Colors.white70,
    elevation: 30,
    child: ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white70), elevation: MaterialStateProperty.all(40) ),
      child: Column(
      children: [
          CircleAvatar(child: Icon(icon, color: Colors.black,), backgroundColor: Theme.of(context).accentColor,),
          Text(title, style: TextStyle(fontSize: 20, color: Colors.black),),
          Text(subTitle, style: TextStyle(fontSize: 10, color: Colors.black),),
        ],
      ),
      onPressed: onPressed,
    ),
  );
}