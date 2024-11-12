import 'package:flutter/material.dart';
import 'Pre.dart';  
import 'Cur.dart';
import 'Bio.dart';
import 'Alb.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 73, 41, 255), // Define a cor de fundo como transparente
      ),
      home: const TelaMenu(),
    );
  }
}

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Adiciona o conteúdo acima da imagem de fundo
          Center(
            child: Column(
              children: [
                // Adiciona a linha com as imagens e o título
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    const SizedBox(width: 10), // Espaçamento entre a imagem e o texto
                    const SizedBox(width: 10), // Espaçamento entre o texto e a imagem
                    Image.network(
                      'img/titulo.png',
                      width: 300, 
                      
                    ),
                    const SizedBox(width: 10), // Espaçamento entre o texto e a imagem
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bio(),
                      ),
                    );
                  },
                    child: Text("B I O G R A F I A"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF7A7A)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Alb(),
                      ),
                    );
                  },
                    child: Text("Á L B U N S"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF7A7A)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pre(),
                      ),
                    );
                  },
                    child: Text("P R Ê M I O S"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF7A7A)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cur(),
                      ),
                    );
                  },
                    child: Text('C U R I O S I D A D E S'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF7A7A)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)), 
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 30),
    
              ], 
            ),
          ),
        ],
      ),
    );
  }
}

