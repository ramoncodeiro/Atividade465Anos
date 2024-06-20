import 'package:flutter/material.dart';
class ListaPortos extends StatelessWidget {
const ListaPortos ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Portos'),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            InkWell(
              onTap: () {},
              child: Column(
              children: [ 
                Image.asset(
                'img/porto-de-sao-sebastiao.jpg', 
                width: 300,
                height: 200,
              ),
              const Text('Porto no Litoral Norte',
              style: TextStyle(fontFamily: AutofillHints.countryName),
              )
            ],
            ),
            ),
            
            InkWell(
              onTap: () {},
              child: Column(
              children: [ 
                Image.asset(
                'img/porto-de-santos.jpg', 
                width: 300,
                height: 200,
              ),
              const Text('Porto de Santos')
            ],
            ),
            ),
            
            
            InkWell(
              onTap: () {},
              child: Column(
              children: [ 
                Image.asset(
                'img/ubatuba.jpeg', 
                width: 300,
                height: 200,
              ),
              const Text('Porto no Litoral Sul')
            ],
            ),
            ),
            
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'img/home.png',
                width: 50.0,
                height: 50.0,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    );
 }
}

