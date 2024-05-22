import 'package:flutter/material.dart';
import 'agentProfile.dart';
import 'selectedLang.dart';

class Agent {
  final int id;
  final String firstName;
  final String lastName;
  final int age;
  final String language;
  final double cost;
  final String imageUrl;

  static int count = 0;

  Agent({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.language,
    required this.cost,
  }): id = count++,
      imageUrl = "assets/images/agents/${firstName + lastName}.png";
}

class AgentList extends StatefulWidget {
  @override
  State<AgentList> createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {
  List<Agent> agents = [
    Agent(firstName: "Alex", lastName: "Frerro", age: 26, language: "italian", cost: 160),
    Agent(firstName: "Mary", lastName: "Laporte", age: 23, language: "spanish", cost: 130),
    Agent(firstName: "Lucas", lastName: "Silva", age: 28, language: "german", cost: 180),
    Agent(firstName: "Daniel", lastName: "Hugo", age: 39, language: "french", cost: 250),
    Agent(firstName: "Emma", lastName: "Lebon", age: 24, language: "english", cost: 140),
    Agent(firstName: "Paul", lastName: "Walker", age: 27, language: "english", cost: 175),
    Agent(firstName: "Sam", lastName: "Schneider", age: 34, language: "german", cost: 210),
    Agent(firstName: "Angela", lastName: "Rossi", age: 32, language: "italian", cost: 190)
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight,
      width: screenWidth,
      color: const Color(0xFF222831),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Liste des agents',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: agents.length,
              itemBuilder: (context, index) {
                if (selectedLangs.contains(agents[index].language)) {
                  return AgentCard(agent: agents[index]);
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
class AgentCard extends StatelessWidget {
  final Agent agent;

  const AgentCard({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.push(context,
          MaterialPageRoute(builder: (context) => AgentProfile(agent: agent))
        );
      },
      child: Card(
        color: const Color(0xFF393E46),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          height: 70,
            child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(agent.imageUrl),
            ),
            title: Text(
              '${agent.firstName} ${agent.lastName}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              '${agent.age} ans ',
              style: const TextStyle(
                color: Colors.white,
              )
            ),
            trailing: Image.asset('assets/images/flags/${agent.language}.png', width: 30, height: 20),
          ),
        ),
      )
    );
  }
}
  
      

