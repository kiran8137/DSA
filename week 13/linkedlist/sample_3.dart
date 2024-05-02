//Given a linked list and a key ‘X‘ in, the task is to check if X is present in the linked list or not.


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

  searchvalue(int target){
    if(head == target || tail == target){
      print("yes");
    }else{
      Node? temp = head;
       while(temp!=null){
        if(temp.data == target){
          print('yes');
          return;
        } 
        temp = temp.next;
       }
       print('no');
    }
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

  list.searchvalue(40);
}