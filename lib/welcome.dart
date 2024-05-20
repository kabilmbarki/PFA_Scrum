import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 200,
                height: 100,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/font_ecran.jpg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 150, left: 0),
                    child: Text(
                      "Dans le monde des solutions \ndigitales de service client",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      "VOTRE PARTENAIRE \nSTRATÉGIQUE \nMONDIAL",
                      style: TextStyle(
                        color: Color(0xffD05708),
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xffD05708),
                          width: 3,
                        ),
                      ),
                      child: Padding( // Wrap the GestureDetector with Padding
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                        child: GestureDetector( // GestureDetector is the child of Padding
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text(
                            "Commencer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "si vous n'avez pas un compte :",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: const Text(
                            " inscrivez-vous",
                            style:
                                TextStyle(color: Color(0xffD05708), fontSize: 17),
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: BottomAppBar(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/images/fb.png',
                        )),
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/in.png')),
                    Image.asset('assets/images/insta.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}