import 'agentBasket.dart' as basket;
import 'agentList.dart' as list;

List<list.Agent> selectedAgents = [
    list.Agent(firstName: "Daniel", lastName: "Hugo", age: 39, language: "french", cost: 250),
    list.Agent(firstName: "Mary", lastName: "Laporte", age: 23, language: "spanish", cost: 130),
    list.Agent(firstName: "Sam", lastName: "Schneider", age: 34, language: "german", cost: 210),
  ];

void addAgent(list.Agent agent) {
  selectedAgents.add(agent);
}

void removeAgent(list.Agent agent) {
  selectedAgents.remove(agent);
}