import 'package:flutter/material.dart';
import 'signup.dart';
import 'language.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF222831),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // Input Fields
                const TextFieldContainer(labelText: 'nom d\'utilisateur', prefixIcon: Icons.person),
                const TextFieldContainer(labelText: 'mot de passe', obscureText: true, prefixIcon: Icons.fingerprint, suffixIcon: Icons.visibility),

                // Forgot Password
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(fontSize: 17, color: Colors.orange),
                      )
                    ),
                  ),
                ),

                // Sign-Up Button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LanguageList()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.orange, width: 2), // Border
                      backgroundColor: Colors.transparent, // Background color
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      fixedSize: const Size(180, 50),
                    ),
                    child: const Text(
                      "Se connecter",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Vous n'avez pas un compte ? ",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      GestureDetector( 
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: const Text(
                          "Inscrivez-vous",
                          style: TextStyle(fontSize: 17, color: Colors.orange),
                        ),
                      ),
                    ],),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Ou",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ),
                const Other(faang: "google", imagePath: "assets/images/google.png"),
                const Other(faang: "facebook", imagePath: "assets/images/facebook.png"),
                const Other(faang: "apple", imagePath: "assets/images/apple-logo.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const TextFieldContainer({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  _TextFieldContainerState createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  late bool _obscureText;
 
  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Increased padding
      child: TextField(
        obscureText: _obscureText,
        keyboardType: widget.keyboardType,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.orange,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(color: Color.fromARGB(170, 255, 255, 255)),
          prefixIcon: Icon(widget.prefixIcon, color: Colors.white),
          suffixIcon: widget.labelText == "mot de passe" ? IconButton( 
            icon: Icon( _obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.white),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
             borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white), // White border
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.orange), // Orange border when focused
          ),
        ),
      ),
    );
  }
}

class Other extends StatelessWidget {
  final String faang;
  final String imagePath;

  const Other({
    Key? key,
    required this.faang,
    required this.imagePath,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: 350,
        height: 50,
        child: OutlinedButton.icon(
          icon: Image(image: AssetImage(imagePath), width: 20),
          onPressed: () {},
          label: Text(
          "Continuer avec $faang",
          style: const TextStyle(color: Colors.white),
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white, width: 2), // Border
            backgroundColor: Colors.transparent, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          )
        ),
      )
    );
  }
}