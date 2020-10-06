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
                height: 100,
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
              TextFormField(
                decoration: InputDecoration(labelText: 'Rua'),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              // Row(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     Column(
              //       children: <Widget>[
              //         TextFormField(
              //           decoration: InputDecoration(
              //             labelText: 'Número',
              //             isDense: true,
              //           ),
              //           validator: (value) {
              //             if (value.isEmpty) return 'Campo Obrigatório';
              //             return null;
              //           },
              //         ),
              //       ],
              //     ),
              //     Column(
              //       children: <Widget>[
              //         TextFormField(
              //           decoration: InputDecoration(labelText: 'Complemento'),
              //           validator: (value) {
              //             if (value.isEmpty) return 'Campo Obrigatório';
              //             return null;
              //           },
              //         ),
              //       ],
              //     ),
              //     Column(
              //       children: <Widget>[
              //         TextFormField(
              //           decoration: InputDecoration(labelText: 'Bairro'),
              //           validator: (value) {
              //             if (value.isEmpty) return 'Campo Obrigatório';
              //             return null;
              //           },
              //         ),
              //       ],
              //     )
              //   ],
              // ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
