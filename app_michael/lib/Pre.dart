import 'package:flutter/material.dart';
import 'Premios.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Premios> premios = [
  Premios(
    nome: 'Oscar de Melhor Trilha Sonora Original', 
    imagem: 'img/oscar.jpg',
  ),
  Premios(
    nome: 'Grammy Award: Melhor Composição Instrumental', 
    imagem: 'img/grammy.jpg',
  ),
  Premios(
    nome: 'Annie Award Música em uma Produção de Longa-metragem', 
    imagem: 'img/annie.jpg',
  ),
  Premios(
    nome: 'GPrêmio BAFTA de Cinema: Melhor Trilha Sonora Original', 
    imagem: 'img/bafta.jpg',
  ),
  Premios(
    nome: 'Prêmio Goya de Melhor Trilha Sonora Original', 
    imagem: 'img/goya.jpg',
  ),
];

class Pre extends StatelessWidget {
  const Pre({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prêmios'),
        backgroundColor: const Color(0xFFFF7A7A),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Espaço acima do carrossel
          CarouselSlider.builder(
            itemCount: premios.length,
            itemBuilder: (context, index, realIndex) {
              final _plataforma = premios[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    _plataforma.imagem,
                    width: 250,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF7A7A), // Cor de fundo do nome da plataforma
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _plataforma.nome,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Cor do texto
                      ),
                    ),
                  ),
                ],
              );
            },
            options: CarouselOptions(
              height: 500,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enableInfiniteScroll: true,
              viewportFraction: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}