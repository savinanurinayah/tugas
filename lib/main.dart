import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/img/larva.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const<Widget>[
                      Icon(Icons.calendar_today),
                      Text('Opern Everyday'),
                    ],
                  ),
                  Column(
                    children: const<Widget>[
                      Icon(Icons.access_alarm),
                      Text('08:00 - 16:00'),
                    ],
                  ),
                  Column(
                    children: const<Widget>[
                      Icon(Icons.monetization_on_outlined),
                      Text('08:00 - 16:00'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/img/larva.jpg'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/img/minion.jpg'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/img/doraemon-1.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

