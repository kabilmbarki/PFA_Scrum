import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap your Scaffold with MaterialApp
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 22, 28, 31),
          title: Row(
            children: [
              Image.asset("images/logo.png"),
              SizedBox(
                width: 120,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_right,
                  size: 60,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Container(
          color: const Color.fromARGB(
              255, 22, 28, 31), // Set background color to grey
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 80),
              Icon(
                Icons.person_2,
                size: 200,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Mon ID: 12345',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Nom et Prenom:',
                style: TextStyle(color: Color(0xff0eaff3), fontSize: 20),
              ),
              SizedBox(height: 5),
              Text('Mon Nom et Mon Prenom',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 5),
              Text(
                'Adresse Email:',
                style: TextStyle(color: Color(0xff0eaff3), fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'personne@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text("Nom d'entreprise: ",
                  style: TextStyle(color: Color(0xff0eaff3), fontSize: 20)),
              SizedBox(height: 5),
              Text(
                'Mon Entreprise ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text("Numero de Telephone: ",
                  style: TextStyle(color: Color(0xff0eaff3), fontSize: 20)),
              SizedBox(height: 5),
              Text(
                '+21622225588',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    // Add employee to basket logic
                  },
                  child: Text(
                    'Modifier Profile ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 59, 72, 78),
                    // Set the background color to gray
                    textStyle: TextStyle(
                      // Optional: Set text color
                      fontSize: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          40.0), // Adjust corner radius as needed
                      side: BorderSide(
                        color: Color.fromARGB(255, 244, 117,
                            54), // Set border color (adjust as desired)
                        width: 1.0, // Set border width
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                color: const Color.fromARGB(255, 59, 72, 78),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.people),
                      onPressed: () {
                        // Settings button logic
                      },
                      color: Colors.white,
                      iconSize: 40,
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_basket),
                      onPressed: () {
                        // Panier button logic
                      },
                      color: Colors.white,
                      iconSize: 40,
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        // Agents button logic
                      },
                      color: Colors.white,
                      iconSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
