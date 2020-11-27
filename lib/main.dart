import 'package:flutter/material.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Home(),
  );
  }
  }

  class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("My Profile"),
      actions: [
        Switch(
          value: isSwitched,
          onChanged: (value){
          setState(() {
          isSwitched=value;
          print(isSwitched);
          });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        ),
      ],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.cyan,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTSZ6S3Qk6xt7VltJuo4TGkhf8bwmnWcuvYg&usqp=CAU'),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text('Flutter Developer',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
        SizedBox(
          width: 200.0,
          child: Divider(
            color: Colors.black,
          ),
          height: 30.0,
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ListTile(
              leading: Icon(Icons.person, size: 38.0),
              title: Text('Jothika', style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ListTile(
              leading: Icon(Icons.phone, size: 28.0),
              title: Text('+91-9123456789', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ListTile(
              leading: Icon(Icons.mail, size: 28.0),
              title: Text('jo@gmail.com', style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),),
            ),
          ),
        ),
      ],
    ),
  );
  }
}