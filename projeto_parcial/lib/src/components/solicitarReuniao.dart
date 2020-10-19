import 'package:flutter/material.dart';

class SolicitarReuniaoPage extends StatefulWidget {
  @override
  _SolicitarReuniaoPage createState() => _SolicitarReuniaoPage();
}

class _SolicitarReuniaoPage extends State<SolicitarReuniaoPage> {
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
                      value: _statusSelProcesso,
                      items: _dropDownProcessoItems,
                      onChanged: changedDropDownProcesso,
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
                      value: _statusSelAdvogado,
                      items: _dropDownAdvogadoItems,
                      onChanged: changedDropDownAdvogado,
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
                        showDialog(
                            context:  context,
                            builder:  (BuildContext context) {
                               return AlertDialog(
                                title: new Text('Sucesso'),
                                content: new Text('Reunião solicitada!'),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('Fechar'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                          },
                        );
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
        appBar: new AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
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
                height: 20,
              ),
              _buildMeusProcessosTF(),
            ],
          ),
        ));
  }

  List<DropdownMenuItem<String>> _dropDownAdvogadoItems;
  String _statusSelAdvogado;

  List<DropdownMenuItem<String>> _dropDownProcessoItems;
  String _statusSelProcesso;

  void changedDropDownAdvogado(String selectedItem) {
    setState(() {
      _statusSelAdvogado = selectedItem;
    });
  }

  void changedDropDownProcesso(String selectedItem) {
    setState(() {
      _statusSelProcesso = selectedItem;
    });
  }

  List<DropdownMenuItem<String>> _getDropDownAdvogadoItems() {
    List<DropdownMenuItem<String>> items = new List();

    items.add(new DropdownMenuItem(
        value: 'Selecione', child: new Text('Selecione')));

    items.add(new DropdownMenuItem(
        value: 'Roberto Souza', child: new Text('Roberto Souza')));

    items.add(new DropdownMenuItem(
        value: 'Ricardo Santos', child: new Text('Ricardo Santos')));

    items.add(new DropdownMenuItem(
        value: 'Augusto Lopes', child: new Text('Augusto Lopes')));

    return items;
  }

  List<DropdownMenuItem<String>> _getDropDownProcessoItems() {
    List<DropdownMenuItem<String>> items = new List();

    items.add(new DropdownMenuItem(
        value: 'Selecione', child: new Text('Selecione')));

    items.add(new DropdownMenuItem(
        value: '0032209-81.2014.8.26.9999', child: new Text('0032209-81.2014.8.26.9999')));

    return items;
  }

  @override
  void initState() {
    _dropDownAdvogadoItems = _getDropDownAdvogadoItems();
    _statusSelAdvogado = 'Selecione';

    _dropDownProcessoItems = _getDropDownProcessoItems();
    _statusSelProcesso = 'Selecione';

    super.initState();
  }
}
