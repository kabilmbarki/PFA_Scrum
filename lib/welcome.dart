import 'package:flutter/material.dart';
import 'package:pfaapp/signin.dart';
import 'package:pfaapp/signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // Fills the entire screen
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bgimg.png"),
              fit:
                  BoxFit.cover, // Ensures the image covers the entire container
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: 500,
                child: Image.asset("images/logo.png"),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Dans le monde des solutions digitales de service client",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "VOTRE PARTENAIRE STRATÉGIQUE MONDIAL",
                  style: TextStyle(
                    color: Color(0xFFD05708),
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text(
                    'Commencer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 60),
                    backgroundColor: Colors.transparent,
                    // Set the background color to gray
                    textStyle: TextStyle(
                      // Optional: Set text color
                      fontSize: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30.0), // Adjust corner radius as needed
                      side: BorderSide(
                        color: Color.fromARGB(255, 244, 117,
                            54), // Set border color (adjust as desired)
                        width: 1.0, // Set border width
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      "si vous n’avez pas un compte : ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Inscrirez Vous",
                      style: TextStyle(
                        color: Color.fromRGBO(225, 100, 40, 1),
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  GestureDetector(
                    onTap: () {
                      //lien fcbk
                    },
                    child: Image.asset("images/fcbk.png"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      //lien fcbk
                    },
                    child: Image.asset("images/linkdin.png"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      //lien fcbk
                    },
                    child: Image.asset("images/insta.png"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
