import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> guiaviagens = [
      {
        'Cidade': 'Ariquemes',
        'imagem': 'assets/images/Ariquemes.jpg',
        'pontoturistico': 'Parque Botânico',
        'pontodescricao': 'O Parque Botânico de Ariquemes é uma área de preservação ambiental que conta com uma vasta coleção de plantas nativas da região amazônica.',
        'pontodeimg': 'assets/images/pontoAriquemes.png',
        'hotelnome': 'Hotel American',
        'hotelend': '3464 Avenida Capitão Silvio, Ariquemes, CEP 76876-684',
        'hotelurl': 'https://maps.app.goo.gl/JNoYHeJnDM93YDbo8',
        'hotelimg': 'assets/images/hotelAriquemes.jpg',
        'restnome': 'Restaurante Caravella´s Culinária Regional',
        'restend': 'Av. Canaã, 3282 - St. 1, Ariquemes - RO, 76870-078',
        'resturl': 'https://maps.app.goo.gl/4hDagzpZ78XoLRBs8',
        'restimg': 'assets/images/restAriquemes.jpeg',
      },
      {
        'Cidade': 'Porto-Velho',
        'imagem': 'assets/images/portovelho.jpg',
        'pontoturistico': 'Três Caixas d’Água',
        'pontodescricao': 'As Três Caixas d’Água, em Porto Velho, também conhecidas como as Três Marias, bem como a praça ao seu redor, têm um papel cultural e histórico importantes para o Estado.',
        'pontodeimg': 'assets/images/pontoPorto.jpg',
        'hotelnome': 'Larison Hotéis',
        'hotelend': 'Av. Carlos Gomes, 756 - São Cristóvão, Porto Velho',
        'hotelurl': 'https://maps.app.goo.gl/sCY9b7JujucDfzEN7',
        'hotelimg': 'assets/images/hotelPorto.jpg',
        'restnome': 'O Paroca Restaurante',
        'restend': 'Rua João Goulart, 2593 - São Cristóvão, Porto Velho - RO, 76804-050',
        'resturl': 'https://maps.app.goo.gl/DLd8VFFQBAbevbuD6',
        'restimg': 'assets/images/restPorto.jpg',
      },
      {
        'Cidade': 'Ji-Parana',
        'imagem': 'assets/images/jiparana.jpg',
        'pontoturistico': 'Rio Ji-Paraná',
        'pontodescricao': 'O rio Ji-Paraná é um curso de água que nasce no estado de Rondônia.',
        'pontodeimg': 'assets/images/pontoJi.jpg',
        'hotelnome': 'Maximus Hotéis Ji Paraná',
        'hotelend': 'R. Dr. Osvaldo, 142 - Jotão, Ji-Paraná - RO, 78964-490',
        'hotelurl': 'https://maps.app.goo.gl/NDY4dUv681v52fyk9',
        'hotelimg': 'assets/images/hotelJi.jpg',
        'restnome': 'Caleche Restaurante',
        'restend': 'R. Seis de Maio, 777 - Urupá, Ji-Paraná - RO, 76900-195',
        'resturl': 'https://maps.app.goo.gl/VoyyUtiLugmdCKf89',
        'restimg': 'assets/images/restJi.jpg',
      },
      {
        'Cidade': 'Vilhena',
        'imagem': 'assets/images/vilhena.jpg',
        'pontoturistico': 'Parque Aquático e Pousada Vilhena',
        'pontodescricao': 'Diversão junto à natureza! O local fica a apenas 4,2 km da cidade, dispõe de piscina adulto e infantil, casa na árvore, voleibol na areia.',
        'pontodeimg': 'assets/images/pontoVil.jpg',
        'hotelnome': 'Golden Hotel',
        'hotelend': 'Av. Antônio Quintino Gomes, 3393 - Jardim América, Vilhena - RO, 76980-000',
        'hotelurl': 'https://maps.app.goo.gl/bPUQFwbabHA9e4Y19',
        'hotelimg': 'assets/images/hotelVil.jpg',
        'restnome': 'Restaurante e Choperia La Varanda',
        'restend': 'Av. Pres. Nasser, 401 - Jardim América, Vilhena - RO, 76980-000',
        'resturl': 'https://maps.app.goo.gl/N2vrJ8bqaYhaaNYh7',
        'restimg': 'assets/images/restVil.jpg',
      },
      {
        'Cidade': 'Jaru',
        'imagem': 'assets/images/jaru.jpg',
        'pontoturistico': 'Praça Parque da Baixada',
        'pontodescricao': 'Com uma área de 55 mil metros quadrados, a Praça Parque da Baixada, construída pelo governo de Rondônia no município de Jaru, mesmo antes da inauguração, já transforma a paisagem da cidade e a vida dos jaruenses.',
        'pontodeimg': 'assets/images/pontoJa.jpg',
        'hotelnome': 'Catuai Hotel Jaru',
        'hotelend': 'Av. Padre Adolpho Rohl, 1332 - Centro, Jaru - RO, 76890-000',
        'hotelurl': 'https://maps.app.goo.gl/KLh9YfPusVBrSQBb6',
        'hotelimg': 'assets/images/hotelJa.jpg',
        'restnome': 'Restaurante Tempero Caseiro',
        'restend': 'Av. Rio Branco, 1090 - St. 2, Jaru - RO, 76800-000',
        'resturl': 'https://maps.app.goo.gl/4wutsKBbqXBK7utQ9',
        'restimg': 'assets/images/restJa.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Viagem Local'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: guiaviagens.length,
        itemBuilder: (context, index) {
          final cidadem = guiaviagens[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                  cidadem['imagem']!, width: 50, height: 50),
              title: Text(cidadem['Cidade']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesPage(
                      Cidade: cidadem['Cidade']!,
                      imagem: cidadem['imagem']!,
                      pontoturistico: cidadem['pontoturistico']!,
                      pontodescricao: cidadem['pontodescricao']!,
                      pontodeimg: cidadem['pontodeimg']!,
                      hotelnome: cidadem['hotelnome']!,
                      hotelend: cidadem['hotelend']!,
                      hotelurl: cidadem['hotelurl']!,
                      hotelimg: cidadem['hotelimg']!,
                      restnome: cidadem['restnome']!,
                      restend: cidadem['restend']!,
                      resturl: cidadem['resturl']!,
                      restimg: cidadem['restimg']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}


class DetalhesPage extends StatelessWidget {
  final String Cidade;
  final String imagem;
  final String pontoturistico;
  final String pontodescricao;
  final String pontodeimg;
  final String hotelnome;
  final String hotelend;
  final String hotelurl;
  final String hotelimg;
  final String restnome;
  final String restend;
  final String resturl;
  final String restimg;

  const DetalhesPage({
    super.key,
    required this.Cidade,
    required this.imagem,
    required this.pontoturistico,
    required this.pontodescricao,
    required this.pontodeimg,
    required this.hotelnome,
    required this.hotelend,
    required this.hotelurl,
    required this.hotelimg,
    required this.restnome,
    required this.restend,
    required this.resturl,
    required this.restimg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Cidade),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              child: Column(
                children: [
                  Text(
                    pontoturistico,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Descrição: ${pontodescricao}'),
                  Image.asset(pontodeimg, width: 150, height: 150),

                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    hotelnome,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Endereço: ${hotelend}'),
                  Text('Maps: ${hotelurl}'),
                  Image.asset(hotelimg, width: 150, height: 150),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    restnome,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Endereço: ${restend}'),
                  Text('Maps: ${resturl}'),
                  Image.asset(restimg, width: 150, height: 150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}