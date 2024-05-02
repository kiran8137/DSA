//insert a node at the end of a Linked List
class Node {
  int data;
  Node? next;
  Node(this.data);
}

class singlylinkedlist{
  Node? head;
  Node? tail;

  createnode(int data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      tail?.next = newnode;
    }
    tail = newnode;
  }

  insertend(int data){
    Node newnode = Node(data);
    if(tail == null){
      tail = newnode;
    }else{
      tail?.next = newnode;
      tail = newnode;
    }
  }

  display(){
    if(head == null){
      print('no list found');
    }else{
      Node? temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main(){
  singlylinkedlist list = singlylinkedlist();

list.createnode(10);
  list.createnode(15);
  list.createnode(20);
  list.createnode(25);
  list.createnode(30);
  list.createnode(40);
  list.display();

  print('------------');

  list.insertend(  100);
  list.display();
}