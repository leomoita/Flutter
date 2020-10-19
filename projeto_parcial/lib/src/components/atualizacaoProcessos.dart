import 'package:flutter/material.dart';

class AtualizacaoProcessosPage extends StatefulWidget {
  @override
  _AtualizacaoProcessosPage createState() => _AtualizacaoProcessosPage();
}

class _AtualizacaoProcessosPage extends State<AtualizacaoProcessosPage> {

  Widget _buildCardAtualizacaoProcesso() {
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
            Container(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  _buildDetailTitle(' Atualização do Andamento'),
                  _buildDetailInfo(' 26/08/2020', ' Conclusos para Sentença'),
                  _buildDetailInfo(' 24/07/2020', ' Petição Juntada\n Nº Protocolo: WBFU.20.70210149-4\n Tipo da Petição: petição Intermediária'),
                  _buildDetailInfo(' 20/07/2020', ' Certidão de Remessa da Intimação Para o Portal Eletrônico Expedida\n Certidão - Remessa da Intimação para o Portal Eletrônico'),
                  _buildDetailInfo(' 15/07/2020', ' Ato Ordinário - Não publicável\n Vista à Defensoria Pública'),
                  _buildDetailInfo(' 15/07/2020', ' Certidão de Cartório Expedida\n Certidão Genérica'),
                  Container(
                    height: 15,
                  ),
                  _buildDetailTitle(' Atualização de Status'),
                  _buildDetailInfo(' 29/09/2016', ' Audiência: INstrução, Debates e Julgamento\n Situação: Realizada'),
                ],
              ),
            ),
            
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
        ),
      ],
    );
  }

  Widget _buildDetailInfo(date, info){
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              text: date + "\n",
              style: TextStyle(
                fontSize: 15, 
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: info,
                  style: TextStyle(
                     color: Colors.black,
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
                Icons.edit,
                size: 50.0,
              ),
              Text(
                'ATUALIZAÇÃO DE PROCESSOS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Container(
                height: 20,
              ),
              _buildCardAtualizacaoProcesso(),
            ],
          ),
        ));
  }
}