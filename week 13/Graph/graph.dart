

import 'dart:collection';

class Graph{
  HashMap<int,List<int>> graph=  HashMap();

  void insert(int vertex , int edge , bool isbidirect){
    if(!graph.containsKey(vertex)){
      graph[vertex] = [];
    }

    if(!graph.containsKey(edge)){
      graph[edge]=[];
    }

    graph[vertex]!.add(edge);

    if(isbidirect){
      graph[edge]!.add(vertex);
    }
  }

  void remove(int data){
    if(graph.containsKey(data)){
      graph.remove(data);
      graph.forEach((key, value) {
        value.remove(data);
      });
    }

  }

  void display(){
    graph.forEach((key, value) {
      print("$key : $value");
    });
    //print(graph.keys);
  }

   void bfs(int vertex){
    List<int> queue = [];
    Set<int> visited = {};

    queue.add(vertex); // next to be visited
    visited.add(vertex); // visited vertex
 
    while(queue.isNotEmpty){
      var current = queue[0];
      queue.removeAt(0);
      for(var i in graph[current]!){
        if(!visited.contains(i)){
          visited.add(i);
          queue.add(i);
        }
      }
    }

    print(visited);

   }









    void dfs(int vertex){
      if(graph.containsKey(vertex)){
        Set<int> visited = {};
        dfshelper(vertex, visited);
        print(visited);
      }else{
        print("no vertex found");
      }

      
    }

    dfshelper(int vertex , Set<int> visited){
      visited.add(vertex);
      for(var i in graph[vertex]!){
        if(!visited.contains(i)){
          dfshelper(i, visited);
        }
      }
    }



    
    }

     
  

void main(){
  Graph graph = Graph();

   
 graph.insert(10, 14 , false);
  graph.insert(10, 15 , false);
  graph.insert(10, 16, false);
  graph.insert(10, 17, false);
  graph.insert(10, 18, false);
  graph.insert(17, 20, false);
  graph.insert(17, 21, false);
   

 
  graph.display();
  //   print('------');
  //  graph.remove(3);
  // graph.display();

graph.bfs(10);
//graph.dfs(10);
 

}