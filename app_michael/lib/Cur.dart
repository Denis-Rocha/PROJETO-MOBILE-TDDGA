import 'package:flutter/material.dart';
import 'Curiosidade.dart';

final List<Curiosidade> curiosidade = [
   Curiosidade(
    titulo: 'DISNEYLÂNDIA', 
    texto: 'Ele criou a música para a versão atualizada de 2005 de Space Mountain na Disneylândia.',
  ),
  Curiosidade(
    titulo: 'SOBRENOME', 
    texto: 'Seu sobrenome é pronunciado "juh-kee-no"."',
  ),
  Curiosidade(
    titulo: 'FORMAÇÃO', 
    texto: 'Formou-se na Escola de Artes Visuais com BFA em Cinema e Vídeo em 1990.',
  ),
];

class Cur extends StatelessWidget {
  const Cur({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curiosidades'),
        backgroundColor: const Color(0xFFFF7A7A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35),

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
                    'CURIOSIDADES',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color:Color(0xFFF1F2F2),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Column(
                children: curiosidade.map((_curiosidade){
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10), // Padding interno do container do texto
                        decoration: BoxDecoration(
                          color: Color(0xFFFF7A7A), // Cor de fundo do container do texto
                          borderRadius: BorderRadius.circular(10), // Borda arredondada
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 144, 144), // Cor de fundo do título
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  _curiosidade.titulo,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // Cor do texto do título
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              _curiosidade.texto,
                              textAlign: TextAlign.center, // Alinha o texto no centro
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF1F2F2), // Cor do texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                    ], 
                  );   
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
