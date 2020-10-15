import 'package:flutter/material.dart';

class MeuProcesssoPage extends StatefulWidget {
  @override
  _MeuProcesssoPage createState() => _MeuProcesssoPage();
}

class _MeuProcesssoPage extends State<MeuProcesssoPage> {
  // Widget _buildMeusProcessosTF() {
  //   return ExpansionCard(
  //     borderRadius: 20,
  //     title: Container(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Text(
  //             "Header",
  //             style: TextStyle(
  //               fontSize: 30,
  //               color: Colors.black,
  //             ),
  //           ),
  //           Text(
  //             "Sub",
  //             style: TextStyle(fontSize: 20, color: Colors.black),
  //           ),
  //         ],
  //       ),
  //     ),
  //     children: <Widget>[
  //       Container(
  //         margin: EdgeInsets.symmetric(horizontal: 7),
  //         child: Text("Content goes over here !",
  //             style: TextStyle(fontSize: 20, color: Colors.black)),
  //       )
  //     ],
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.gavel,
                size: 70.0,
              ),
              Text(
                'Meus Processos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Container(
                height: 100,
              ),
            ],
          ),
        ));
  }
}