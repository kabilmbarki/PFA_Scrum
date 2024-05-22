import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              const TextFieldContainer(labelText: 'nom et prénom', prefixIcon: Icons.person),
              const TextFieldContainer(labelText: 'nom d\'utilisateur', prefixIcon: Icons.person),
              const TextFieldContainer(labelText: 'nom de l\'entreprise', prefixIcon: Icons.business),
              const TextFieldContainer(labelText: 'adresse email', keyboardType: TextInputType.emailAddress, prefixIcon: Icons.email),
              const TextFieldContainer(labelText: 'mot de passe', obscureText: true, prefixIcon: Icons.fingerprint),
              const TextFieldContainer(labelText: 'confirmer le mot de passe', obscureText: true, prefixIcon: Icons.lock),
              const TextFieldContainer(labelText: 'numéro de téléphone', keyboardType: TextInputType.phone, prefixIcon: Icons.phone),

              // Sign-Up Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.orange, width: 2), // Border
                    backgroundColor: Colors.transparent, // Background color
                    foregroundColor: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    fixedSize: const Size(180, 50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous avez déjà un compte ? ",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(fontSize: 17, color: Colors.orange),
                      ),
                    ),
                  ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;

  const TextFieldContainer({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0), // Increased padding
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.orange,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Color.fromARGB(170, 255, 255, 255)),
          prefixIcon: Icon(prefixIcon, color: Colors.white),
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
