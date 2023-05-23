import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

class BaseTestWidget extends StatelessWidget {
  const BaseTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedIcon(
                icon: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
                  shadows: [
                    Shadow(blurRadius: 3, color: Colors.lightBlueAccent),
                  ],
                ),
              ),
              DecoratedIcon(
                icon: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
                  shadows: [
                    Shadow(
                      blurRadius: 3,
                      color: Color.fromARGB(255, 128, 216, 255),
                    ),
                  ],
                ),
              ),
              DecoratedIcon(
                icon: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
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
                  shadows: const [
                    Shadow(color: Colors.yellowAccent, blurRadius: 3),
                  ],
                ),
              ),
              DecoratedIcon(
                icon: Icon(
                  Icons.home,
                  color: Colors.green.shade900,
                  size: 36,
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
                  shadows: [
                    Shadow(color: Colors.green.shade900, blurRadius: 2),
                  ],
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedIcon(
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 255, 234, 0),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
              DecoratedIcon(
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 239, 83, 80),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
              DecoratedIcon(
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 0, 229, 255),
                      blurRadius: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
