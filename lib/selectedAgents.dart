import 'agentList.dart' as list;

List<list.Agent> selectedAgents = [];

void addAgent(list.Agent agent) {
  selectedAgents.add(agent);
}

void removeAgent(list.Agent agent) {
  selectedAgents.remove(agent);
}