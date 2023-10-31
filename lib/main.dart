import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget createBlueContainer() {
  return Center(
    child: Container(
      color: Colors.blue[100],
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10)
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar( title: Text('앱제목') ),
          body: Container(
            color: Colors.yellowAccent[50],
            width:double.infinity,
            height:double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createBlueContainer(),
                    createBlueContainer(),
                    createBlueContainer()
                      ],
                    ),
                  ),
                ),
              ),
            );
  }
}

//flutter run -d chrome --web-port=8080 --web-hostname=127.0.0.1