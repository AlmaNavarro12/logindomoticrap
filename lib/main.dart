import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DomoticRAP',
      supportedLocales: const [
      Locale('en'), // Idioma inglés
      Locale('es'), // Idioma español
    ],
    localizationsDelegates: const [
      AppLocalizations.delegate, // Agrega AppLocalizations.delegate
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
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