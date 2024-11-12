import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Biografia.dart';

final List<Biografia> biografia =[
  Biografia(
    titulo:'Biografia',
    texto:'Michael Giacchino nasceu no dia 10 de outubro de 1967 no estado de Nova Jersey, EUA, ele é compositor e ator muito aclamado pelos seus diversos trabalhos, principalmente de composições como: “Married Life” e “Stuff we Did” do filme Up da Dysney e Pixar, além de trabalhos como a composição musical do filme Batman de 2022 dirigido por Matt Revves.',
    imagem:'img/bio.jpg',
  ),

];

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('História'),
        backgroundColor: const Color(0xFFFF7A7A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: biografia.map((_sobre) {
              return Column(
                children: [
                  SizedBox(height: 35,),
                  Container(
                    width:800,
                    height:70,
                      padding: const EdgeInsets.fromLTRB(10,0,10,10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('img/fundoTitulos.png'),
                          fit:BoxFit.fill,
                        ),
                      ),
                    child: Center(
                      child: Text(
                        _sobre.titulo,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color:Color(0xFFF1F2F2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      _sobre.imagem,
                      width: 250,
                    ),
                  ),

                  SizedBox(height: 35,),

                  Container(
                    padding: const EdgeInsets.all(10), // Padding interno do container do texto
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7A7A), // Cor de fundo do container do texto
                      borderRadius: BorderRadius.circular(10), // Borda arredondada
                    ),
                    child: Text(
                      _sobre.texto, // Texto do botão
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}