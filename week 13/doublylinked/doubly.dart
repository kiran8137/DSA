

class Node{
  Node? prev;
  int data;
  Node? next;

  Node(this.data);
}

class doublylinkedlist{
  Node? head;
  Node? tail;

   createnode(data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
   }

   displayforward(){
    if(head == null){
      print("no list found");
    }else{
      Node? temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
   }

   displaybackward(){
    if(tail == null){
      print('no list found');
    }else{
      Node? temp = tail;
      while(temp!=null){
        print(temp.data);
        temp = temp.prev;
      }
    }
   }


   insertbeginning(int data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      newnode.next = head;
      newnode.prev = null;
      head?.prev = newnode;
    }
    head = newnode;
   }


   insertafter(int aftervalue , int data){
    Node newnode = Node(data);
    Node? temp = head;
    while(temp!=null){
      if(temp.data == aftervalue){
        newnode.next = temp.next;
        temp.next = newnode;
        newnode.prev = temp;

        if(temp == tail){
          tail = newnode;
        }else{
          newnode.next?.prev = newnode;
        }
        temp = temp.next;
      }
    }
   }
}

void main(){
  doublylinkedlist list = doublylinkedlist();

  list.createnode(10);
   list.createnode(20);
    list.createnode(30);
     list.createnode(40);
     list.createnode(50);
     list.createnode(50);
     list.createnode(50);
     list.createnode(100);
     list.displayforward();

     print('-------------');
     //list.displaybackward();

    //  list.insertbeginning(100);
    //  list.displayforward();
    //  print('-------------');
    //  list.displaybackward();

    list.insertafter(30, 1000);
    list.displayforward();

}