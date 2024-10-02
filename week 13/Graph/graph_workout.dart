import 'dart:collection';

class graph {
  HashMap<int, List<int>> graphlist = HashMap();

  insert(int vertex, int edge, bool isbidirect) {
    if (!graphlist.containsKey(vertex)) {
      graphlist[vertex] = [];
    }

    if (!graphlist.containsKey(edge)) {
      graphlist[edge] = [];
    }

    graphlist[vertex]!.add(edge);

    if (isbidirect) {
      graphlist[edge]!.add(vertex);
    }
  }

  void bfs(int vertex){
    List<int> queue = [];
    Set<int> visited = {};

    queue.add(vertex);
    visited.add(vertex);

    while(queue.isNotEmpty){
      int current = queue[0];
      queue.removeAt(0);
      for(var i in graphlist[current]!){
        if(!visited.contains(i)){
          visited.add(i);
          queue.add(i);
        }
      }
    }
    print(visited);
  }

  display() {
    graphlist.forEach((key, value) {
      print("$key : $value");
    });
  }
}

void main() {
  graph gr = graph();
  gr.insert(10, 5, false);
  gr.insert(10, 10, false);
  gr.insert(10, 9, false);
  gr.insert(10, 12, false);
  gr.insert(10, 4, false);
  gr.insert(4, 50, false);

  gr.display();

  gr.bfs(10);
}
