import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(
          255, 22, 28, 31), // Set background color to grey
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Icon(
            Icons.person_rounded,
            size: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const Text(
            'Mon ID: 12345',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text(
            'Nom et Prenom:',
            style: TextStyle(color: Color(0xff0eaff3), fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text('Mon Nom et Mon Prenom',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(height: 5),
          const Text(
            'Adresse Email:',
            style: TextStyle(color: Color(0xff0eaff3), fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text(
            'personne@gmail.com',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text("Nom d'entreprise: ",
              style: TextStyle(color: Color(0xff0eaff3), fontSize: 20)),
          const SizedBox(height: 5),
          const Text(
            'Mon Entreprise ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text("Numero de Telephone: ",
              style: TextStyle(color: Color(0xff0eaff3), fontSize: 20)),
          const SizedBox(height: 5),
          const Text(
            '+21622225588',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Container(
            height: 60,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                // Add employee to basket logic
              },
              
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 59, 72, 78),
                // Set the background color to gray
                textStyle: const TextStyle(
                  // Optional: Set text color
                  fontSize: 30,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      40.0), // Adjust corner radius as needed
                  side: const BorderSide(
                    color: Color.fromARGB(255, 244, 117,
                        54), // Set border color (adjust as desired)
                    width: 1.0, // Set border width
                  ),
                ),
              ),
              child: const Text(
                'Modifier Profile ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
        ]
      ),
    );
  }
}