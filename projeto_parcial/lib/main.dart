import 'package:flutter/material.dart';
import 'package:projeto_parcial/src/components/atualizacaoProcessos.dart';
import 'package:projeto_parcial/src/components/cadastro.dart';
import 'package:projeto_parcial/src/components/login.dart';
import 'package:projeto_parcial/src/components/meuProcesso.dart';
import 'package:projeto_parcial/src/components/solicitarReuniao.dart';
import 'package:projeto_parcial/src/components/home.dart';

void main() {
  runApp(MaterialApp(
    // theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    title: 'Spadoni Carvalho App',
    initialRoute: '/login',
    routes: {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/cadastro': (context) => CadastroPage(),
      '/meusProcessos': (context) => MeuProcesssoPage(),
      '/solicitarReuniao': (context) => SolicitarReuniaoPage(),
      '/atualizacaoProcessos': (context) => AtualizacaoProcessosPage(),
    },
  ));
}
