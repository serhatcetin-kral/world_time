import 'package:flutter/material.dart';

class Choose_location extends StatefulWidget {

  @override
  State<Choose_location> createState() => _Choose_locationState();

}
class _Choose_locationState extends State<Choose_location> {




  int counter=0;

  @override
  Widget build(BuildContext context) {

    print("build part ");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose location"),
        centerTitle: true,
        elevation: 0,
      ),
      body:ElevatedButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Text("counter is $counter"),
      ) ,

    );
  }
}
