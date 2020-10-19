import 'package:flutter/material.dart';
// import 'package:card_settings/card_settings.dart';

class SolicitarReuniaoPage extends StatefulWidget {
  @override
  _SolicitarReuniaoPage createState() => _SolicitarReuniaoPage();
}

class _SolicitarReuniaoPage extends State<SolicitarReuniaoPage> {
  String _currentCity;

  get botao => null;

  get dropdownValue => null;

  Widget _buildMeusProcessosTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 25),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Selecione o Processo",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 28, top: 27),
                    child: DropdownButton(
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      value: _statusSel,
                      items: _dropDownMenuItems,
                      onChanged: changedDropDownItem,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 35),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Selecione o Advogado",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 28, top: 37),
                    child: DropdownButton(
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      value: _statusSel,
                      items: _dropDownMenuItems,
                      onChanged: changedDropDownItem,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        "Mensagem",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 50),
                          child: Icon(Icons.person,
                              size: 20.0, color: Colors.white),
                        ),
                        //hintText: "Input your opinion",
                        //hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(new Radius.circular(60.0))),
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 200, top: 55),
                    child: RaisedButton(
                      elevation: 9.0,
                      onPressed: () {
                        Navigator.pushNamed(context, '/enviar');
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.orange,
                      child: Text(
                        'Enviar',
                        style: botao,
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
                size: 50.0,
              ),
              Text(
                'SOLICITAR REUNIÃO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Container(
                height: 25,
              ),
              _buildMeusProcessosTF(),
            ],
          ),
        ));
  }

  void changedDropDownItem(String selectedItem) {
    setState(() {
      _statusSel = selectedItem;
    });
  }

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _statusSel;

  List<DropdownMenuItem<String>> _getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();

    items.add(new DropdownMenuItem(
        value: 'Roberto Souza', child: new Text('Roberto Souza')));

    items.add(new DropdownMenuItem(
        value: 'Ricardo Santos', child: new Text('Ricardo Santos')));

    items.add(new DropdownMenuItem(
        value: 'Augusto Lopes', child: new Text('Augusto Lopes')));

    return items;
  }

  @override
  void initState() {
    _dropDownMenuItems = _getDropDownMenuItems();
    _statusSel = _dropDownMenuItems[0].value;

    super.initState();
  }
}
