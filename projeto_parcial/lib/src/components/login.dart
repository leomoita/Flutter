import 'package:flutter/material.dart';
import 'package:projeto_parcial/src/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  String email = '';
  String senha = '';

  Widget _buildLoginTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            controller: _emailController,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: "WorkSansLight",
                  fontSize: 18.0),
              filled: true,
              fillColor: Colors.white,
              hintText: "E-mail",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.white, width: 0.5)),
              prefixIcon: const Icon(
                Icons.email,
                color: Colors.black,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty || !value.contains("@"))
                return "E-mail inválido!";
              return null;
            },
            onSaved: (txt) {
              setState(() {
                email = txt;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            controller: _passController,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: "WorkSansLight",
                  fontSize: 18.0),
              filled: true,
              fillColor: Colors.white,
              hintText: "Senha",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide(color: Colors.white24, width: 0.5)),
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: Colors.black,
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value.isEmpty || value.length < 6) 
                return "Senha inválida!";
              return null;
            },
            onSaved: (txt) {
              setState(() {
                senha = txt;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      width: 200,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          if (_formkey.currentState.validate()) {
            _formkey.currentState.save();
            Navigator.pushNamed(context, '/home');
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.orange,
        child: Text('Entrar', style: botao),
      ),
    );
  }

  Widget _buildCadastrarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 200,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.pushNamed(context, '/cadastro');
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.orange,
        child: Text(
          'Cadastrar',
          style: botao,
        ),
      ),
    );
  }

  Widget _buildEsqueceuSenhaBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Esqueceu a senha?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 150.0),
              Image(
                image: AssetImage('assets/logo.png'),
              ),
              Container(
                height: 150,
              ),
              _buildLoginTF(),
              _buildPasswordTF(),
              _buildCadastrarBtn(),
              _buildLoginBtn(),
              _buildEsqueceuSenhaBtn()
            ],
          ),
        ),
      ),
    );
  }
}
