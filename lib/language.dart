import 'package:flutter/material.dart';

class LanguageList extends StatelessWidget {
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
                // Language Selection
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Choisissez les langues des agents',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Languages(),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20),
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
                    child: const Text(
                      "Continuer",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Languages extends StatefulWidget {
  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  final List<String> languages = ['Anglais', 'Français', 'Espagnol', 'Allemand', 'Italian', 'Arabe'];
  final List<String> flags = [ 'assets/images/flags/england.png', 'assets/images/flags/france.png', 'assets/images/flags/spain.png', 'assets/images/flags/germany.png', 'assets/images/flags/italy.png', 'assets/images/flags/saudi_arabia.png' ];
  
  List<String> selectedLanguages = [];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * .6, // Set the height of the container
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (selectedLanguages.contains(languages[index])) {
                  selectedLanguages.remove(languages[index]);
                } else {
                  selectedLanguages.add(languages[index]);
                }
              });
            },
            child: Container(
              width: screenWidth * .8,
              height: 70, 
              margin: const EdgeInsets.symmetric(vertical: 7.0),// Set the width of each box
              child: Card(
                color: selectedLanguages.contains(languages[index]) ? Color.fromARGB(255, 114, 219, 243) : Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(flags[index], width: 50, height: 50), 
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(languages[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ), 
                      ),
                    ],
                  ),
              ),
            )
          );
        },
      ),
    );
  }
}