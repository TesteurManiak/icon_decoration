import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

final baseWidget = DecoratedBox(
  decoration: const BoxDecoration(color: Colors.black),
  child: Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const DecoratedIcon(
            icon: Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(blurRadius: 3, color: Colors.lightBlueAccent),
              ],
            ),
          ),
          DecoratedIcon(
            icon: const Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(
                  blurRadius: 3,
                  color: Colors.lightBlueAccent.shade100,
                ),
              ],
            ),
          ),
          const DecoratedIcon(
            icon: Icon(
              Icons.lightbulb_outline,
              color: Colors.lightBlueAccent,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(blurRadius: 2, color: Colors.lightBlueAccent),
              ],
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedIcon(
            icon: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            decoration: const IconDecoration(
              shadows: [
                Shadow(color: Colors.yellowAccent, blurRadius: 3),
              ],
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(color: Colors.green.shade900, blurRadius: 3),
              ],
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.home,
              color: Colors.green.shade900,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(color: Colors.green.shade900, blurRadius: 2),
              ],
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DecoratedIcon(
            icon: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(color: Colors.yellowAccent.shade400, blurRadius: 3),
              ],
            ),
          ),
          DecoratedIcon(
            icon: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(color: Colors.red.shade400, blurRadius: 3),
              ],
            ),
          ),
          DecoratedIcon(
            icon: const Icon(
              Icons.access_alarm,
              color: Colors.black54,
              size: 36,
            ),
            decoration: IconDecoration(
              shadows: [
                Shadow(color: Colors.cyanAccent.shade400, blurRadius: 3),
              ],
            ),
          )
        ],
      ),
    ],
  ),
);
