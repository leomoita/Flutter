import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  _HomePage({this.icon, this.title, this.rota});
  final IconData icon;
  final String title;
  final String rota;

  Widget _buildMeusProcessosTF(icon, title, rota) {
    return Container(
      height: 200,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, rota),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 70.0,
                ),
                Text(title, style: new TextStyle(fontSize: 25.0))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Olá Fulano de tal,',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Container(
                height: 100,
              ),
              _buildMeusProcessosTF(Icons.gavel, 'Meus Processos', '/meusProcessos'),
              _buildMeusProcessosTF(Icons.edit, 'Atualização de \nProcessos', '/atualizacaoProcessos'),
              _buildMeusProcessosTF(Icons.perm_contact_calendar,'Solicitar Reunião \ncom Advogado', '/solicitarReuniao')
            ],
          ),
        ));
  }
}