import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    bool obs = true;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal.shade100, Colors.purple.shade100],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            //Logotipo
            Image.asset('assets/logo_sinfondo.png', width: 200, height: 200),

            const SizedBox(height: 15),

            //Campo de usuario
            const Text('Nombre de usuario',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 14)),

            const SizedBox(height: 5),

            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Usuario',
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.people), onPressed: () {}))),

            const SizedBox(height: 10),

            //Campo de contraseña
            const Text('Contraseña',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 14)),
            const SizedBox(height: 5),
            TextFormField(
                obscureText: obs,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Contraseña',
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {
                          setState(
                              () => {obs == true ? obs = false : obs = true});
                        }))),

            const SizedBox(height: 15),
            //Boton para iniciar sesión
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 66, 23, 71))),
                    child: const Text('INICIAR SESIÓN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)))),
            const SizedBox(width: double.infinity, height: 25),
            const Text('o inicia con',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey)),
            const SizedBox(width: double.infinity, height: 25),

            //Boton para iniciar sesión con google
            SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 11, 11),
                            width: 2.0)),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Google',
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 11, 11),
                              fontSize: 18),
                        )))),
            const SizedBox(width: double.infinity, height: 25),

            //Boton para iniciar sesón con facebook
            SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 31, 18, 104),
                            width: 2.0)),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Facebook',
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 18, 104),
                              fontSize: 18),
                        )))),
          ],
        ),
      ),
    );
  }
}
