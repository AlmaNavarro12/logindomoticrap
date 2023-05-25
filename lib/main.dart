import 'package:flutter/material.dart';
import 'package:login_domoticrap/pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DomoticRAP',
      home: Scaffold(
          body: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
            //Imagen de fondo
            Image.asset(
              'assets/fondo_blanco.jpg',
              fit: BoxFit.cover,
            ),
            //Imagen del circulo degradado
            Positioned(
                top: 50.0,
                left: null,
                right: null,
                child: Center(
                  child: Image.asset(
                    'assets/circulo_degradado.png',
                    width: 300.0,
                    fit: BoxFit.contain,
                  ),
                )),
            //Imagen del logo sobre el circulo
            Positioned(
                top: 70.0,
                left: null,
                right: null,
                child: Center(
                  child: Image.asset(
                    'assets/logo_sinfondo.png',
                    width: 300.0,
                    fit: BoxFit.contain,
                  ),
                )),
            //Imagen de la casa
            Positioned.fill(
                top: null,
                bottom: 0.5,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/casa_sinfondo.png',
                  width: 300,
                  fit: BoxFit.contain
                )),
          ])),
    );
  }
}
