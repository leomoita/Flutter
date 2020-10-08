import 'package:flutter/material.dart';

class CardsResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(title: Text('ListView com Builder')),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Olá Fulano de tal,',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return _CardItem(color: Colors.primaries[Colors.primaries.length]);
                }),
              )
            ],
          ),
        ));
  }
}


class _CardItem extends StatelessWidget {
  final Color color;
  const _CardItem({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              color
            ],
            stops: [
              0.3,
              0.5
            ],
          ),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Text('TESTE'),
      ),
    );
  }
}