import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Center(
                  child:
                      Text('Bem vindo ao app', style: TextStyle(fontSize: 30)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Usuário',
                  prefixIcon: Icon(Icons.person),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) return 'Campo Obrigatório';
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty)
                    return 'Campo Obrigatório';
                  else if (value.length < 4)
                    return 'Senha muito curta. (Pelo menos 4 caracteres)';
                  return null;
                },
              ),

              
              RaisedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if (_formkey.currentState.validate()) {}
                },
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
