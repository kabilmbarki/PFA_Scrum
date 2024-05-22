import 'package:flutter/material.dart';
import 'selectedAgents.dart' show selectedAgents, removeAgent;
import 'agentList.dart' as list;
import 'agentProfile.dart';

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

class AgentBasket extends StatefulWidget {
  @override
  State<AgentBasket> createState() => _AgentBasketState();
}

class _AgentBasketState extends State<AgentBasket> {

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
              'agents selectionnés:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedAgents.length,
              itemBuilder: (context, index) {
                return AgentCard(agent: selectedAgents[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AgentCard extends StatefulWidget {
  final list.Agent agent;

  const AgentCard({Key? key, required this.agent}) : super(key: key);

  @override
  _AgentCardState createState() => _AgentCardState(agent : agent);
}


class _AgentCardState extends State<AgentCard> {
  final list.Agent agent;

  _AgentCardState({Key? key, required this.agent});

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
              '${agent.age} ans - ${agent.language} - ${agent.cost} €',
              style: const TextStyle(
                color: Colors.white,
              )
            ),
            trailing: IconButton(
                icon: const Icon(
                  Icons.remove_circle_outline_rounded,
                  color: Color.fromARGB(255, 248, 3, 3),
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    removeAgent(agent);
                  });
                },
              ),
            )
          ),
      )
    );
  }
}
  
      

