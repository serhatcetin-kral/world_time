import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';


class WorldTime {

  String? location; // location name for UI
  String? time; // the time in that location
  String? flag; // url to an asset flag icon
  String? url; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
  try{
    // make the request
    var url = Uri.https('www.worldtimeapi.org', '/api/timezone/Europe/London', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    // get properties from json
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    //print(now);

    // set the time property
    //time = now.toString();
    time=DateFormat.jm().format(now);
  }
      catch(e){
      print("error type: $e");
      time="could not get time";
      }
  }

}

// WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');