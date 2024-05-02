

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

    if(head == null){
      head = newnode;
      tail = newnode;
      return;
    }
    Node? temp = head;
    while(temp!=null){
      if(temp.data == aftervalue){
        if(temp == tail){
          tail?.next = newnode;
          newnode.prev = tail;
          tail = newnode;
        }else{
        newnode.next = temp.next;
        temp.next = newnode;
        newnode.prev = temp;
        }
        return ; 
        

        
      }
      temp = temp.next;

    }
   }


   insertbefor(int beforvalue , int data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
      tail = newnode;
      return;
      
    }
    Node? temp = head;
    while(temp!=null){
      if(temp.data == beforvalue){
        if(temp == head){
          newnode.next = temp;
          temp.prev = newnode;
          head = newnode;
        }else{
          newnode.next = temp;
        temp.prev?.next = newnode;
        temp.prev = newnode;
        newnode.prev = temp.prev;
        }
        
        
      }
      temp = temp.next;
    }
     
   }

   insertend(int data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
      tail = newnode;
    }
    else{
      tail?.next = newnode;
      newnode.prev = tail;
      tail = newnode;
    }

     
   }


   deletenode(int deletedata){
    if(head == null){
      print('not list found');
    }else{
      Node? temp = head;
      while(temp!=null){
        if(temp.data == deletedata){
          if(temp == head){
          head = head?.next;
          head?.prev = null;
          return;
        }
        if(temp == tail){
          tail = tail?.prev;
          tail?.next = null;
          return;
        }

        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next; 
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
      list.displayforward();
      print('---------');
      //list.displaybackward();

      // list.insertafter(20, 1000);
      // list.displayforward();

      // list.insertbefor(10, 1000);
      // list.displayforward();

      // list.insertend(500);
      // list.displayforward();

      print('--------');

      list.deletenode(40);
      list.displayforward();

     
    //  list.displayforward();

    //  print('-------------');
    //  //list.displaybackward();

    // //  list.insertbeginning(100);
    // //  list.displayforward();
    // //  print('-------------');
    // //  list.displaybackward();

    // list.insertafter(30, 1000);
    // list.displayforward();


}