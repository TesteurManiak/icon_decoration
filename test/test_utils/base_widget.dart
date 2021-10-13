import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

Widget generateBaseApp({
  required Widget child,
  Color backgroundColor = Colors.black,
}) =>
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: child,
      ),
    );

final baseWidget = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const DecoratedIcon(
            child: Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            shadows: [
              Shadow(blurRadius: 3, color: Colors.lightBlueAccent),
            ],
          ),
          DecoratedIcon(
            child: const Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            shadows: [
              Shadow(
                blurRadius: 3,
                color: Colors.lightBlueAccent.shade100,
              ),
            ],
          ),
          const DecoratedIcon(
            child: Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            shadows: [
              Shadow(blurRadius: 2, color: Colors.lightBlueAccent),
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedIcon(
            child: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            shadows: const [
              Shadow(color: Colors.yellowAccent, blurRadius: 3),
            ],
          ),
          DecoratedIcon(
            child: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            shadows: [
              Shadow(color: Colors.green.shade900, blurRadius: 3),
            ],
          ),
          DecoratedIcon(
            child: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            shadows: [
              Shadow(color: Colors.green.shade900, blurRadius: 2),
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedIcon(
            child: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            shadows: [
              Shadow(color: Colors.yellowAccent.shade400, blurRadius: 3),
            ],
          ),
          DecoratedIcon(
            child: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            shadows: [
              Shadow(color: Colors.red.shade400, blurRadius: 3),
            ],
          ),
          DecoratedIcon(
            child: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            shadows: [
              Shadow(color: Colors.cyanAccent.shade400, blurRadius: 3),
            ],
          )
        ],
      ),
    ],
  ),
);
