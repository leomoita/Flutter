import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPage createState() => _CadastroPage();
}

class _CadastroPage extends State<CadastroPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SPADONI CARVALHO')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                child: Center(
                  child: Text('Cadastrar.', style: TextStyle(fontSize: 30)),
                ),
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Pessoa Fídica/Jurídica'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome/Razão Social'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telefone'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CPF/CNPJ'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Data Nascimento'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CEP'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Rua'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Número"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Complemento"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Bairro"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Cidade"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "UF"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
