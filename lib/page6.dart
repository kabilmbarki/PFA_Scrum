import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class agents extends StatefulWidget {
  const agents({super.key});

  @override
  State<agents> createState() => _agentsState();
}

class _agentsState extends State<agents> {
  final player = AudioPlayer();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap your Scaffold with MaterialApp
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset("images/logo.png"),
              SizedBox(
                width: 90,
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  size: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          color: const Color.fromARGB(
              255, 22, 28, 31), // Set background color to grey
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 80),
              Image.asset("images/img.png"),
              SizedBox(height: 20),
              Text(
                'Lucas Silva ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'ID: 12345',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Age: 30',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text('Cout: 150 £',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Passage Vocal:',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  IconButton(
                    icon: Icon(Icons.play_circle_outline_outlined),
                    onPressed: () {
                      playSound();
                    },
                    color: Colors.white,
                    iconSize: 40,
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Add employee to basket logic
                },
                child: Text(
                  'Ajouter au panier',
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
                        20.0), // Adjust corner radius as needed
                    side: BorderSide(
                      color: Color.fromARGB(255, 244, 117,
                          54), // Set border color (adjust as desired)
                      width: 1.0, // Set border width
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

  Future<void> playSound() async {
    String audioPath = "audio/vcl.mp3";
    if (isPlaying) {
      await player.stop(); // Stop audio if already playing
      setState(() {
        isPlaying = false;
      });
    } else {
      await player.play(AssetSource(audioPath)); // Play audio
      setState(() {
        isPlaying = true;
      });
    }
  }
}
