import 'package:flutter/material.dart';

class agentList extends StatefulWidget {

  @override
  _agentListState createState() => _agentListState();
}

class _agentListState extends State<agentList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Agent {
  final int id;
  final String firstName;
  final String lastName;
  final int age;
  final String nationality;
  final double cost;
  final String imageUrl;

  static int count = 0;

  Agent({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.nationality,
    required this.cost,
  }): id = count++,
      imageUrl = "assets/images/agents/${firstName + lastName}.png";
}