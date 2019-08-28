import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String _userAvatarUrl = 'https://saibaba.com/homePage/babacrosslegimg.gif';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('Widgets Demo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CheckBoxWidget(),
            Chip(
              avatar: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.network(_userAvatarUrl),
                ),
              ),
              label: Text('Saipatham'),
            ),
            CircleAvatar(
              //minRadius: ,
                radius: 60,
                child: ClipOval(
                  child: Image.network(_userAvatarUrl),
                ))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text(
                  'BottomAppBar',
                  textAlign: TextAlign.center,
                ),
              ),
              /*FloatingActionButton(
                onPressed: null,
                child: Text('Add'),
              ),*/
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB clicked');
          },
          child: Text('Add'),
        ),
      ),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: _value,
        onChanged: (bool newValue) {
          setState(() {
            _value = newValue;
          });
        },
      ),
    );
  }
}
