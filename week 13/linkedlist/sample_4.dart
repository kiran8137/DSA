//Find Length of a Linked List

class Node{
  int data;
  Node? next;
  Node(this.data);

}

class singlylinkedlist{
  Node? head ;
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

  findlength(){
    int count = 0;
    Node? temp = head;
    while(temp!=null){
      count++;
      temp = temp.next;
    }

    print(count);
  }

  display(){
    if(head == null){
      print("not list find");
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

  list.findlength();
}