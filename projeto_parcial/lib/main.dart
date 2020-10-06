import 'package:flutter/material.dart';
import 'package:projeto_parcial/src/cadastro.dart';
import 'package:projeto_parcial/src/login.dart';
import 'package:provider/provider.dart';
import 'src/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App 04',
    initialRoute: '/login',
    routes: {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/cadastro': (context) => CadastroPage(),
    },
  ));
}

// class MeuApp extends StatelessWidget{

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//     theme: ThemeData(
//       brightness: Brightness.dark
//     ),
//       routes: {
//         '/home': (context) => HomePage(),
//       },
//       initialRoute: '/home',
//     );
//   }
// }
