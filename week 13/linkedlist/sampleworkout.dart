

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
    if(head== null){
      head = newnode;
    }else{
      tail?.next = newnode;
      
    }

    tail = newnode;

  }

  void display(){
    if(head == null){
      print('empty');
    }else{
      Node? temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }


  sum(){
    int evensum = 0;
    int oddsum = 0;

    Node? temp = head;
    while(temp!=null){
      if(temp.data.isEven){
        evensum+=temp.data;
      }else{
        oddsum+=temp.data;
      }
      temp = temp.next;
    }

    print("even digits sum $evensum");
    print("odd digits sum $oddsum");
  }
}

void main(){
  singlylinkedlist list = singlylinkedlist();

  list.createnode(10);
  list.createnode(5);
  list.createnode(6);
  list.createnode(3);
  list.createnode(7);
  list.createnode(2);

  list.display();

  list.sum();
  
}