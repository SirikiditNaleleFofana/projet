import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'apk',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fixedSize: const Size(0, 50),
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: Colors.transparent,
      // onSurface: Colors.transparent,
      shadowColor: Colors.transparent,
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image/paysage.jpeg',
            ),
          )),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Welcome Back ',
                            style: TextStyle(
                                fontFamily: 'ProductSans',
                                package: 'receipt_widget',
                                fontSize: 30,
                                color: Color.fromARGB(255, 17, 91, 151),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/image/testrefait.png'),
                          height: 180,
                          width: 140,
                        )
                      ],
                    ),

                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 25.0,
                    ),

                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: const TextStyle(
                          height: 2.0,
                        ),
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: 'password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: const Color.fromARGB(255, 17, 91, 151),
                          value: check,
                          onChanged: (bool? value) {
                            setState(() {
                              check = value!;
                            });
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 42.0,
                        ),
                        SizedBox(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 17),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Forget Passord?',
                              style: TextStyle(
                                fontFamily: 'ProductSans',
                                package: 'receipt_widget',
                                color: Color.fromARGB(255, 17, 91, 151),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xFF550BFC),
                            Color(0xFF00FFA7),

                            //add more colors
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: const EdgeInsets.all(20),
                                  child: SizedBox(
                                    child: AlertDialog(
                                      //  backgroundColor:
                                      //  Color.fromARGB(255, 17, 91, 151),
                                      title: const Text(
                                        "Valider la Session",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: const SizedBox(
                                        child: Text(
                                            "Veillez appuyer pour Valider la Session"),
                                      ),
                                      actions: [
                                        OutlinedButton(
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: const Size(50, 20),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              textStyle:
                                                  const TextStyle(fontSize: 5),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  const snackBar = SnackBar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 17, 91, 151),
                                                    content: Text(
                                                      "Connection annuler",
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  );
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                },
                                                child: const Text("Annuler"))),
                                        OutlinedButton(
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: const Size(50, 20),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              textStyle:
                                                  const TextStyle(fontSize: 5),
                                            ),
                                            onPressed: () {
                                              // ignore: unused_local_variable

                                              Navigator.pop(context);
                                            },
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  const snackBar = SnackBar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 17, 91, 151),
                                                    content: Text(
                                                      'Vous etes connecté',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  );
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                },
                                                child: const Text("Valider"))),
                                        const SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: const Text('Login '),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: Row(
                        children: const [
                          Expanded(child: Divider()),
                          Text(
                            "Login with",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>[
                            Icon(
                              Icons.facebook,
                              color: Color.fromARGB(255, 17, 91, 151),
                              size: 30.0,
                            ),
                            Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              size: 30.0,
                            ),
                            Image(
                              image: AssetImage('assets/image/image3.png'),
                              height: 24,
                              width: 24,
                            ),
                            Icon(
                              Icons.apple_sharp,
                              color: Colors.black,
                              size: 35.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "Vous n'avez pas de compte?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 17),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const inscription(),
                                    ));
                              },
                              child: const Text(
                                'S\'inscrire',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 17, 91, 151),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              // Container(

              // )
            ],
          ),
        ),
        // bottomNavigationBar: NavigationBar(
        // destinations: const [NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        //                      NavigationDestination(icon: Icon(Icons.person), label: 'user')]),
      ),
    );
  }
}
