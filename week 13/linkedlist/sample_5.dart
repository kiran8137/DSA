//Delete from a Linked List : first node

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
      print('no list');
    }else{
      Node? temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  deletefirstnode(){
    if(head == null){
      print('no list');
    }else{
      if(head == tail){
        head = null;
        tail = null;
        print('first node removed');
      }else{
        head = head?.next;
        print('first node removed');
      }
     
    }
  }

}

void main(){
  singlylinkedlist list = singlylinkedlist();

 // list.createnode(10);
  list.createnode(20);
  list.display();

  print('-----------');

  list.deletefirstnode();
  list.display();
}