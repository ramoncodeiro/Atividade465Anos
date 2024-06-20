import 'package:flutter/material.dart';
import 'package:portos_pam/ListaPortos.dart';


void main (){
  runApp(const TelaPortos());
}

class TelaPortos extends StatefulWidget {
  const TelaPortos({super.key});

  @override
  State<TelaPortos> createState() => _TelaPortosState();
}

class _TelaPortosState extends State<TelaPortos> {
  get buttonWidth => 250;
  
  get buttonHeight => 35;

  get buttonMarginTop => 15;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const color = Color.fromRGBO(122, 145, 227, 1);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portos',
        style: TextStyle(fontFamily: 'Itim')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 0,
              ),
              height: 100
            ),
            Container(
               margin: const EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 50.0,
              ),
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  IconButton(
                  icon: const Icon(Icons.tune, size: 32.0),
                  onPressed: () {},
                  ),
                  const Spacer(flex: 17),
                  IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(Icons.search, size: 32.0),
                  ),
                ],
              ),
            ),
            Container(
              height: 195,
              width: 395,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/portos.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
Column(
  children: [

    SizedBox(height: buttonMarginTop),
    SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListaPortos()),
          );
          Navigator.pushNamed(context, 'lista de portos');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(122, 145, 227, 1.0),
        ),
        child: const Text(
          'Lista de Portos',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),

    SizedBox(height: buttonMarginTop),
    SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'números de emergência');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(122, 145, 227, 1.0),
        ),
        child: const Text(
          'Números para Emergência',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),

    SizedBox(height: buttonMarginTop),
    SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'avalie um porto');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(122, 145, 227, 1.0),
        ),
        child: const Text(
          'Avalie um Porto',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),

    SizedBox(height: buttonMarginTop),
    SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'Mapa Litoral de SP');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(122, 145, 227, 1.0),
        ),
        child: const Text(
          'Mapa do Litoral Paulista',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),

    SizedBox(height: buttonMarginTop),
    SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'Sobre nós');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(122, 145, 227, 1.0),
        ),
        child: const Text(
          'Sobre Nós',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ],
),

              Container(
                margin: const EdgeInsets.only(
                  left: 0.0,
                  top: 10.0,
                  right: 375.0,
                  bottom: 10.0,
              ),
              height: 63,
              width: 65,
              decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage('img/buttonportos.png'),
              fit: BoxFit.cover,
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
