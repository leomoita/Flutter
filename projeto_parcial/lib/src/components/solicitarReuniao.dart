import 'package:flutter/material.dart';
// import 'package:card_settings/card_settings.dart';

class SolicitarReuniaoPage extends StatefulWidget {
  @override
  _SolicitarReuniaoPage createState() => _SolicitarReuniaoPage();
}

class _SolicitarReuniaoPage extends State<SolicitarReuniaoPage> {

  String _currentCity;

  Widget _buildMeusProcessosTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.height / 2.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FlutterLogo(size: 100),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "3 TEA CUPS",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Texto explicativo sobre o contéudo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Divider(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Texto explicativo",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Texto explicativo",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.calendar_today,
                size: 70.0,
              ),
              Text(
                'SOLICITAR REUNIÃO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Container(
                height: 25,
              ),
              _buildMeusProcessosTF(),
            ],
          ),
        ));
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }
}
