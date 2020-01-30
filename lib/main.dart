import 'package:flutter/material.dart';
import 'text.dart';
import 'widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dehaze),
        title: Text(
          "CONTACT",
        ),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Image(
            image: AssetImage('assets/images/ot1_contact_main.png'),
            height: 180,
            fit: BoxFit.fill),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                text1,
                style: style(),
              ),
              RoundedButton(
                onpressed: () {},
                text: button1,
              ),
              Text(
                text2,
                style: style(),
              ),
              Text(
                text3,
                style: style(),
              ),
              RoundedButton(onpressed: () {}, text: button2),
              Button3(),
            ],
          ),
        ),
      ]),
      persistentFooterButtons: <Widget>[BottomNavBar()],
    );
  }
}
