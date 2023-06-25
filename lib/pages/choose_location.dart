import 'package:flutter/material.dart';
import '../services/world_time.dart';

class Choose_location extends StatefulWidget {

  @override
  State<Choose_location> createState() => _Choose_locationState();

}
class _Choose_locationState extends State<Choose_location> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];


 // int counter=0;

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
      body:ListView.builder(

        itemCount: locations.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: (){

                },
                title: Text('locations[index].location'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/${locations[index].flag}"),
                ),
              ),
            ),
          );

        },


      ),

    );
  }
}

// ElevatedButton(
// onPressed: (){
// setState(() {
// // counter+=1;
// });
// },
// child: //Text("counter is $counter"),
// )