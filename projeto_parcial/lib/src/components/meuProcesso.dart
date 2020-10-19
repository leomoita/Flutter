import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class MeuProcesssoPage extends StatefulWidget {
  @override
  _MeuProcesssoPage createState() => _MeuProcesssoPage();
}

class _MeuProcesssoPage extends State<MeuProcesssoPage> {
  String textHolder = 'Ver Detalhes';

  Widget _buildCardProcesso() {
    return Center(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: 
                Text(
                  'Processo:',
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              subtitle:
                Text(
                  '0032209-81.2014.8.26.9999',
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.blue,
                  ),
                ),
            ),
            ExpansionCard(
              backgroundColor: Colors.white,
              onExpansionChanged: (expandedValue){
                setState(() {
                  textHolder = expandedValue ? 'Ocultar Detalhes' : 'Ver Detalhes';
                });     
              },
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          '$textHolder',
                          style: TextStyle(
                            fontSize: 15, 
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildDetailTitle(' Classe'),
                        _buildDetailInfo(' Área:', ' Criminal'),
                        _buildDetailInfo(' Assunto:', ' Furto Qualificado'),
                        _buildDetailInfo(' Distribuição:', ' 19/01/2016 às 09:54 - Prevenção 1ª Vara Criminal - Foro Central Criminal Barra Funda'),
                        _buildDetailInfo(' Controle:', ' 2016/000054'),
                        _buildDetailInfo(' Juiz:', ' MARIA FERNANDA BELLI'),
                        Container(
                          height: 15,
                        ),
                        _buildDetailTitle(' Dados da Delegacia'),
                        _buildDetailInfo(' Documento:', ' Inquérito Policial'),
                        _buildDetailInfo(' Número:', ' 44/2014'),
                        _buildDetailInfo(' Distrito Policia:', ' 39º Distrito Policial - Vila Gustavo'),
                        _buildDetailInfo(' Município:', ' São Paulo - SP'),
                        Container(
                          height: 15,
                        ),
                        _buildDetailTitle(' Partes do Processo'),
                        _buildDetailInfo(' Autor:', ' Justiça Pública'),
                        _buildDetailInfo(' Réu:', ' JOÃO JOSÉ'),
                        _buildDetailInfo(' Def. Púb:', ' Defensoria Pública do Estado de São Paulo Movimentações'),
                        Container(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Ver Atualizações do Processo'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/atualizacaoProcessos');
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDetailTitle(title) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15, 
              color: Colors.blueAccent[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ) 
      ],
    );
  }

  Widget _buildDetailInfo(subtitle, info){
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              text: subtitle,
              style: TextStyle(
                fontSize: 15, 
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: info,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          )
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
                Icons.gavel,
                size: 50.0,
              ),
              Text(
                'MEUS PROCESSOS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Container(
                height: 20,
              ),
              _buildCardProcesso(),
            ],
          ),
        ));
  }
}