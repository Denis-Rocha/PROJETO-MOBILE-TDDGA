import 'package:flutter/material.dart';
import 'Album.dart';

final List<Album> album = [
  Album(
     nome:'The Batman',
    descricao:'A trilha sonora foi lançada pela WaterTower Music em 25 de fevereiro de 2022, uma semana antes do lançamento do filme. ',
    imagem:'img/albimg/batman.jpg',
  ),
  Album(
    nome:'UP: Altas Aventuras',
    descricao:'Giacchino escreveu uma trilha baseada no tema do personagem que os cineastas sentiram que melhorou a história do filme.',
    imagem:'img/albimg/up.jpg',
  ),
  Album(
   nome:'Ratatouille',
    descricao:'Ratatouille é o álbum da trilha sonora do filme homônimo da Disney/Pixar de 2007, composto por Michael Giacchino.',
    imagem:'img/albimg/rato.jpg',
  ),
  Album(
   nome:'Black',
    descricao:'Giacchino fez o Main Theme da Soundtrack original de Black da EA games',
    imagem:'img/albimg/black.jpg',
  ),
  Album(
    nome:'The Medal of Honor',
    descricao:'Uma composição feita por Michael e a EA games Soundtrack',
    imagem:'img/albimg/medal.jpg',
  ),
];

class Alb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Álbuns'),
        backgroundColor: const Color(0xFFFF7A7A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: album.map((album) {
              return Column(
                children: [
                  SizedBox(height: 30,),

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
                        album.nome,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color:Color(0xFFF1F2F2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                                return DescricaoAlbum(album: album);
                            },
                          ),
                        );
                      },
                      child: Image.network(
                        album.imagem,
                        width: 300,
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}


class DescricaoAlbum extends StatelessWidget {
  final Album album;

  DescricaoAlbum({required this.album});


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descrição do Álbum'),
        backgroundColor: const Color(0xFFFF7A7A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 30,),

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
                    album.nome,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color:Color(0xFFF1F2F2),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50,),

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
                        color: Color.fromARGB(255, 247, 181, 181), // Cor de fundo do título
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'DESCRIÇÃO',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Cor do texto do título
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      album.descricao,
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              
                    SizedBox(height: 10,),

                  ],
                ),
              ),

              
            
          ),
        
      
    );
  }
}