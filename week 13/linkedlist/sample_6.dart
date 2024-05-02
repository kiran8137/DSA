
//Delete from a Linked List : last node

class Node{
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

  display(){
    if(head == null){
      print('no list to display');
    }else{
      Node? temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  removelast(){
    if(tail == null){
      print('not found');
    }else{
      if(tail == head){
        tail = null;
        head == null;
        print('tail removed');
      }else{
        Node? temp = head;
        Node? prev;
        while(temp?.next!=null){
          prev = temp;
          temp = temp?.next;

        }
        tail = prev;
        tail?.next = null;
      }
    }
  }
}

void main(){

  singlylinkedlist list = singlylinkedlist();

   
  list.createnode(10);
  list.createnode(39);
  list.createnode(20);
  list.createnode(10);
  list.createnode(40);
  list.display();

  print("------");

  list.removelast();
  list.display();
}