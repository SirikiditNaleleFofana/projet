import 'main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class inscription extends StatelessWidget {
  const inscription({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        fixedSize: const Size(0, 50),
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: const Color.fromARGB(255, 5, 53, 92));
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/image/testrefait.png'),
          )),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'welcome \nBack ',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromARGB(255, 5, 53, 92)),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image(
                    image: AssetImage('assets/image/testrefait.png'),
                    height: 150,
                    width: 150,
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Nom',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Prenom',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Numero de telephone',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Mote de passe',
                  border: const OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Confirme mote de passe',
                  border: const OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Valide'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.facebook,
                    color: Color.fromARGB(255, 7, 62, 107),
                    size: 24.0,
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 24.0,
                  ),
                  Image(
                    image: AssetImage('assets/image/image3.png'),
                    height: 24,
                    width: 24,
                  ),
                  Icon(
                    Icons.apple_sharp,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Vous n'avez pas de compte?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                    },
                    child: const Text('Se connecter'),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
