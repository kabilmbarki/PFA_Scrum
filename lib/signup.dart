import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pfaapp/signin.dart';
import 'package:pfaapp/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 28, 31),
        body: ListView(
          children: [
            Container(
              child: Image.asset(
                "images/logo.png",
                width: 400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nom et Prénom",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email ",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Numéro de téléphone",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nom d'entreprise",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Mot de Passe",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirme Mot de Passe ",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white, // Set border color to white
                      width: 1.0, // Adjust border width as needed
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Color(0xFFD05708), width: 1.0), // Orange color
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60, right: 60, bottom: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "S'incrire",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffeeeeee),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  // Change width to 250
                  fixedSize: Size(250, 60), // Adjust height if needed
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: Color(0xffd05708), width: 1.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "si vous n’avez pas un compte : ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ));
                    }, // Navigate to CreatAccount page
                    child: Text(
                      "inscrirez vous",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(225, 100, 40, 1),
                          fontWeight: FontWeight.bold),
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
