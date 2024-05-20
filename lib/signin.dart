import 'package:flutter/material.dart';
import 'package:pfaapp/page6.dart';
import 'package:pfaapp/setting.dart';
import 'package:pfaapp/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                height: 200,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
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
                  hintText: "Mot de Passe ",
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
              height: 30,
              alignment: Alignment.center,
              child: const Text(
                "Mot de Passe oublier ?",
                style: TextStyle(
                  fontFamily: "Assistant",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffd05708),
                  height: 21 / 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => setting(),
                  ));
                },
                child: Text(
                  "Se Connecter",
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
            Row(
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
                      builder: (context) => const SignUp(),
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
            Container(
              margin: EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  // Center the icon and text horizontally
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/google.png"),
                    SizedBox(width: 10.0), // Add spacing between icon and text
                    Text(
                      "S'inscrire avec Google",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  // Change width to 250
                  fixedSize: Size(250, 60), // Adjust height if needed
                  backgroundColor: Colors.transparent,
                  side: BorderSide(width: 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
