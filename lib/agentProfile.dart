import 'package:flutter/material.dart';
import 'package:mega_tel/agentBasket.dart';
import 'package:mega_tel/home.dart';
import 'selectedAgents.dart';
import 'agentList.dart'as list;

class AgentProfile extends StatelessWidget{
  final list.Agent agent;
  const AgentProfile({Key? key, required this.agent}) : super(key: key);

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
                Icons.person_rounded,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
    body: Container(
      color: const Color(0xFF222831), // Set background color to grey
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 80),
          Image.asset(agent.imageUrl),
          const SizedBox(height: 20),
          Text(
            '${agent.firstName} ${agent.lastName}',
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            'Id: #${agent.id}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text(
            'Age: ${agent.age}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text(
            'nationalité: ${agent.language}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text('Cout: ${agent.cost}Є',
              style: const TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Passage Vocal:',
                style: TextStyle(color: Colors.white, fontSize: 20)),
                IconButton(
                  icon: const Icon(Icons.play_circle_outline_outlined),
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 40,
                ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              addAgent(agent);
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
          },
          style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 59, 72, 78),
          textStyle: const TextStyle(
            fontSize: 30,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust corner radius as needed
            side: const BorderSide(
              color: Color.fromARGB(255, 244, 117,
                  54), // Set border color (adjust as desired)
              width: 1.0, // Set border width
            ),
          ),
          ),
          child: const Text(
            'Ajouter au panier',
            style: TextStyle(
              color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    )
    );
  }
}