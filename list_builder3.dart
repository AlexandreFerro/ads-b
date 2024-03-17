import 'package:flutter/material.dart';

//import 'package:location/location.dart';
//import "package:latlong/latlong.dart" as latLng;
//import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: listBuilder3(),
  ));
}

class listBuilder3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<listBuilder3> {
  List<Person> persons = [];

  @override
  void initState() {
    //adding item to list, you can add using json from network
    persons
        .add(Person(id: "1", callsign: "AZU4706", type: "ATR72", dep: "10:40"));
    persons.add(
        Person(id: "2", callsign: "GLO9718", type: "B737-700", dep: "12:20"));
    persons
        .add(Person(id: "3", callsign: "AZU3421", type: "E190", dep: "13:18"));
    persons
        .add(Person(id: "4", callsign: "TAM2615", type: "A320", dep: "14:30"));

    super.initState();
    persons.shuffle();
    const urlMap =
        "https://www.google.com/maps/place/Aeroporto+Internacional+de+Viracopos/@-23.0089861,-47.1503561,17z/data=!3m1!4b1!4m6!3m5!1s0x94c8ca7445c3047b:0x88a68ef7d857f2a3!8m2!3d-23.0089911!4d-47.1477812!16zL20vMGgxbHg?entry=ttu";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Radar"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: EdgeInsets.all(10),
            child: Column(
              children: persons.map((personone) {
                return Container(
                    child: Card(
                      child: ListTile(
                        title: Text(personone.callsign),
                        subtitle: Text(personone.type + "\n" + personone.dep),
                        trailing: Icon(Icons.favorite_rounded),
                      ),
                    ),
                  );

               }

              ).toList(),

            ),


          ),
        ));
  }
}

class Person {
  //modal class for Person object
  String id, callsign, type, dep;
  Person(
      {required this.id,
        required this.callsign,
        required this.type,
        required this.dep});
}
