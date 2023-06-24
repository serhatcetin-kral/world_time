import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 final Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final data = ModalRoute.of(context)?.settings.arguments as Map;
    // set background image
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
     Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

   // print(data);


    return Scaffold(
      //appBar: AppBar(),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/$bgImage"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text(
                        'Edit Location'
                    )
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 50.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66.0,
                    )
                ),
              ],
            ),
          ),
        ),

    );
  }
}


