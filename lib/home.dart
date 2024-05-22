import 'package:flutter/material.dart';
import 'package:mega_tel/language.dart';
import 'agentList.dart';
import 'agentBasket.dart';
import 'profile.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Widget _bodyWidget = AgentList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        title: Row(
          children: [
            Container(
              width: 150,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                _bodyWidget = profile();
              },
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.transparent,
            size: 0,
          ),
          onPressed: () {
            Null;
          },
        ),
      ),
      // if one or more languages are selected:
      body: _bodyWidget,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color.fromARGB(0, 0, 96, 252),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: () {
                setState(() {
                  _bodyWidget = SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Language Selection
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'selectionner les langues',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Languages(),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _bodyWidget = AgentList();
                                });
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
                                "Confirmer",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
              color: Colors.white,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.people),
              onPressed: () {
                setState(() {
                  _bodyWidget = AgentList();
                });
              },
              color: Colors.white,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.shopping_basket),
              onPressed: () {
                setState(() {
                  _bodyWidget = AgentBasket();
                });
              },
              color: Colors.white,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Agents button logic
              },
              color: Colors.white,
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}