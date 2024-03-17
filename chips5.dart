import 'package:flutter/material.dart';
import 'list_builder3.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MaterialApp(
    title: 'ADS-B',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ADS-B"),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(25),
            ),
            Center(
              /** CHIP Superior com mensagem TATIC **/
              child: Chip(
                elevation: 20,
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.blueAccent[100],
                shadowColor: Colors.red,

                avatar: const CircleAvatar(), //CircleAvatar
                label: const Text(
                  'Última atualização do TATIC 08/08/2023',
                  style: TextStyle(fontSize: 20),
                ), //Text
              ),
            ),

            /**    Botões   **/
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 200,
                  child: VerticalDivider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Tooltip(
                  message: ('Radar ADS-B'),
                  child: ElevatedButton(
                    onPressed: () {
                      //abrirBuilder();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OldScreen()));
                    },
                    style:
                    ElevatedButton.styleFrom(fixedSize: const Size(64, 64)),
                    child: const Icon(Icons.radar),
                  ),
                ),
                Tooltip(
                  message: ('Consulta DCL'),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewScreen()));
                    },
                    style:
                    ElevatedButton.styleFrom(fixedSize: const Size(64, 64)),
                    child: const Icon(Icons.html),
                  ),
                ),
                Tooltip(
                  message: ('Enviar DTA'),
                  child: ElevatedButton(
                    onPressed: () {
                      runApp(MaterialApp(
                        home: listBuilder3(),
                      ));
                    },
                    style:
                    ElevatedButton.styleFrom(fixedSize: const Size(64, 64)),
                    child: const Icon(Icons.description_outlined),
                  ),
                ),
                Tooltip(
                  message: ('Relatório ADS-B'),
                  child: ElevatedButton(
                    onPressed: () {
                      abrirBuilder();
                    },
                    style:
                    ElevatedButton.styleFrom(fixedSize: const Size(64, 64)),
                    child: const Icon(Icons.flight_takeoff),
                  ),
                ),
              ], //Children
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text('RADAR ADS-B'),
                // Text('Consulta DCL'),
                // Text('Enviar DTA'),
                // Text('Relatório ADS-B'),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 950,
              color: Colors.blueGrey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          textAlign: TextAlign.left,
                          ("RADAR 1: "),
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          ("RADAR 2: "),
                          style: TextStyle(fontSize: 15),
                        ),
                      ]),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Chip(
                        elevation: 6,
                        padding: const EdgeInsets.all(6),
                        backgroundColor: Colors.greenAccent[100],
                        shadowColor: Colors.black,

                        avatar: const CircleAvatar(),
                        //CircleAvatar
                        label: const Text(
                          'OK',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Chip(
                        elevation: 6,
                        padding: const EdgeInsets.all(6),
                        backgroundColor: Colors.greenAccent[100],
                        shadowColor: Colors.black,
                        avatar: const CircleAvatar(),
                        label: const Text(
                          '3min',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                   const SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      width: 200,
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 3,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      width: 50,
                      thickness: 1,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, 0),
                    child: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "/images/Graph5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      width: 50,
                      thickness: 1,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, 0),
                    child: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "/images/Graph6.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      width: 50,
                      thickness: 1,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1, 0),
                    child: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "/images/Graph7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        /**  Estatísticas **/
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Consulta'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            Padding(
              padding: EdgeInsets.all(20.1),
            ),
           Align(
              child: SizedBox(
              width: 400,
              height:100,

              child: TextField(
              //textAlign: TextAlign.center,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Matrícula',
              ),
             ),
            ),
          ),
            SizedBox(
              width: 400,
              height:100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Call Sign',
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height:100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Dia',
                ),
              ),
            ),
          SizedBox(
          width:700,
          height:100,
          child: ListView(
                  children:
                [
                    _createDataTable()
                ]

                ),
              )
        ]
      )
    );
  }
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Registration')),
      DataColumn(label: Text('Call Sign')),
      DataColumn(label: Text('Date'))
    ];
  }
  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('PRAXG')),
        DataCell(Text('AZU5708')),
        DataCell(Text('15/08/2023'))
      ]),
      DataRow(cells: [
        DataCell(Text('PSDXX')),
        DataCell(Text('TAM3706')),
        DataCell(Text('12/04/2022'))
      ])
    ];
  }
}


void abrirBuilder() async {
  
  const urlMap =
      //"https://www.google.com/maps/place/Aeroporto+Internacional+de+Viracopos/@-23.0089861,-47.1503561,17z/data=!3m1!4b1!4m6!3m5!1s0x94c8ca7445c3047b:0x88a68ef7d857f2a3!8m2!3d-23.0089911!4d-47.1477812!16zL20vMGgxbHg?entry=ttu";
        'https://waze.com/ul';
  if (await canLaunchUrl(Uri.parse(urlMap))) {
    await launchUrl(Uri.parse(urlMap));
  } else {
    throw 'Could not launch Maps';
  }
}

class OldScreen extends StatelessWidget {
const OldScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  backgroundColor: Colors.green,
  title: const Text('Consulta'),
  ),
  body:  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>
  [
  Container(
    child: Image.asset(
      "/images/Imagem1.png",
      width: 1600,
      height: 550,
        ),
      )
    ]
  ));
  }

}
  void abrirConsulta() async {

  }
