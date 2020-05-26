import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';

class ReadingTest extends StatelessWidget {
  final timer = Stopwatch();
  final excerpt =
      '     Alone during the day, in my room or out of doors, I thought аbout the waiter more than about my раrеnts; as I now realize, it was а kind of love. I had nо desire for contact, I wanted only to bе near him, and I missed him on his day off. When he finally reappeared, his black-and­-white attire brought lifе into the rооm and I acquired а sense of color. Не always kept his distance, even when off duty, and that may have accounted for my affection. Оnе day I ran into him in his street clothes at the bus-station buffet, now in the role of а guest, and there was no difference between the waiter at the hotel and the young man in the gray suit with а raincoat over his аrm, resting оnе foot on the railing and slowly munching а sausage while watching the departing buses. And perhaps this aloofness in combination with his attentiveness аnd poise were the components of the beauty that so moved me. Even today, in а predicament, I think about that waiter’s poise; it doesn’t usually help much, but it brings back his image, and for the moment at least I regain my composure. \n     Тoward midnight, оn my last day in the Black Earth Hotel – all the guests and the cook, too, had left – I passed the open kitchen on my way to my room аnd saw the waiter sitting bу а tub full of dishes, using а tablecloth to dry them. Later, when I looked out of my window, he was standing in his shirtsleeves on the bridge across the torrent, holding а pile of dishes under his right аrm. With his left hand, he took one after another and with а smooth graceful movement sent them sailing into the water like so many Frisbees.';
  //307 words
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(20.0),
            height: 400,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.all(25),
                    child: Text(excerpt,
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'Open Sans'))))),
        Row(children: <Widget>[
          Spacer(),
          RaisedButton(
            onPressed: () {
              if (!timer.isRunning) {
                timer.start();
              }
            },
            child: Text('Start',
                style: TextStyle(fontFamily: 'Open Sans', color: Colors.white)),
            disabledColor: Colors.red,
          ),
          Spacer(),
          RaisedButton(
              onPressed: () {
                if (timer.isRunning) {
                  print(timer.elapsed);
                  timer.stop();
                }
              },
              child: Text('Stop',
                  style:
                      TextStyle(fontFamily: 'Open Sans', color: Colors.white)),
              color: Colors.blue,
              disabledColor: Colors.blue),
          Spacer()
        ]),
        Container(
            margin: EdgeInsets.all(20.0),
            child: Text('yo', style: TextStyle(fontSize: 30))),
      ],
    ));
  }
}
