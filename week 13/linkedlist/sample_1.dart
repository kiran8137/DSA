//insert a node after a given node in a Linked List

class Node {
  
  int data;
  Node? next;

  Node(this.data);
}

class singlylinkedlist{

  Node? head;
  Node? tail;

  createnode(data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      tail?.next = newnode;
    }

    tail = newnode;
  }

  void insertafter(int givenvalue , int data){
    Node? temp = head;
    while(temp!=null){
      if(temp.data == givenvalue){
        Node newnode = Node(data);
        newnode.next = temp.next;
        temp.next = newnode;
      }
      temp = temp.next;
    }
  }

  display(){
    if(head == null){
      print('there is no list');
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

  list.insertafter(15, 100);
  list.display();
}