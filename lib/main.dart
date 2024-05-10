import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 57, 62),
        body: ListView(
          children: [
            Container(
              alignment: Alignment(0, 0),
              width: 300,
              height: 150,
              child: Image.asset('assets/logo.png'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Entrer votre nom",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white, // Text color
                        fontSize: 17, // Text font size
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'nom',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Entrer votre prénom",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'prénom',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Entrer le nom d'Entreprise",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "nom d'entreprise",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // Additional text fields and containers
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Entrer votre adresse Mail",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'adresse Mail',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // More text fields and containers can be added similarly
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Créer un mot de passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'mot de passe',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Confirmer le mot de passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'confirmer mot de passe',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Entrer votre numéro de téléphone",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(7),
                    width: 1000,
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'numéro de téléphone',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromARGB(255, 158, 96, 2),
                        width: 1,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print("S'inscrire button pressed!");
                      },
                      child: const Text(
                        "S'inscrire",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "si vous n’avez pas un compte : ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ));
                          },
                          child: const Text(
                            "inscrirez vous",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(181, 64, 9, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
