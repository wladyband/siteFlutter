import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsentientTerms extends StatelessWidget {
  const ConsentientTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: Get.back, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Termos de consentimento'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 600),
          child: ListView(
            children: const [
              Center(
                  heightFactor: 2,
                  child: Text(
                      '1-TERMO DE CONSENTIMENTO PARA TRATAMENTO DE DADOS',

                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      )
                  ),
              ),
              SizedBox(height: 20),
              Text(
                ' O Termo de Consentimento para Tratamento de Dados expressa concordância e pressupõe o conhecimento das práticas estipuladas na Política de Privacidade. '
                    'A concordância com o termo permitirá que o Azerox mantenha a privacidade dos seus dados e continue assegurando os benefícios do desenvolvimento de novas formas de tratamento, melhoria da '
                    'qualidade do serviço e garantia da segurança, que dependem do uso e tratamento dos seus dados. Seu consentimento para que a Azerox obtenha e use seus dados pessoais para os seguintes fins: '
                    ''
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 1),
              Text(
                'Será necessário obter: '
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Dados Pessoais '
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Nome e sobrenome; '
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Sexo;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Nacionalidade;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                ' Data de nascimento;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'CPF;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'RG;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'E-mail;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Nº Celular;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Nº Telefone;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Dados Cadastrais'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Endereço completo;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                  '2-Finalidades:',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 20),
              SizedBox(height: 3),
              Text(
                'Cadastrar e dispor das soluções disponíveis no sistema;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Compartilhar os dados com outros usuários da rede AZEROX;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                'Compartilhar os dados com terceiros que fazem o armazenamento e tratamento dos dados coletados;'
                ,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 3),
              Text(
                ' Envio de propagandas de marketing através do e-mail, Celular e Telefone.'
                ,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
