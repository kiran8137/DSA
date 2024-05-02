class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class linkedlist{
  Node? head;
  Node? tail;

  void addnode (data){
    Node newnode =  Node(data);
    if(head == null){
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

  void listtolinked(nums){
    for(var num in nums){
     addnode(num);
     display();
  }
  }

  insertbeginning(data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      newnode.next = head;
      head = newnode;
    }
  }

  insertend(data){
    Node newnode = Node(data);
    if(tail == null){
      tail = newnode;
    }else{
      tail?.next = newnode;
      tail = newnode;
    }
  }

  insertafter(int prev_value , int data){
    Node? temp = head;
    while(temp!=null){
      if(temp.data == prev_value){
        Node newnode = Node(data);
        newnode.next = temp.next;
        temp.next = newnode;
        return;
      } 
       
      temp = temp.next;
    }

    print('not found');

     
    
  }

  insertbefore(int nextvalue , int data){
    Node? temp = head;
    Node? prevnode;

    while(temp!=null){
      if(temp.data == nextvalue){
        Node newnode = Node(data);
        if(prevnode != null){
          prevnode.next = newnode;
        }else{
          head = newnode;
        }
        newnode.next = temp;
        return;
        

      }
       prevnode = temp;
       temp = temp.next;

    }

    print("not found");
  }


  headremove(){
    if(head == null){
      print('no head found');
    }else{
      if(head == tail){
        head = null;
        tail = null;
        print('head removed');
      }else{
        head = head?.next;
        print('head removed');
      }
    }
  }

  removetail(){
    if(tail == null){
      print('tail not found');
    }
    else{
      if(tail == head){
        tail = null;
        head = null;
        print('tail removed');
      }else{
        Node? temp = head;
        Node? prevnode;

        while(temp?.next!=null){
          prevnode = temp;
          temp = temp?.next;
        }

        tail = prevnode;
        tail?.next = null;
        print('tail removed');
      }
    }
  }

  removeelment(int data){
    if(data == head?.data){
      headremove();
    }
    else{
      Node? temp = head;
      Node? prevnode;

      while(temp?.data!=data && temp!=null){
        prevnode = temp;
        temp = temp.next;
      }
      if(temp == null){
        print('not found');
      }
      if(temp == tail){
        tail = prevnode;
        tail?.next = null;
      }
      prevnode?.next = temp?.next;

    }
  }
  
}

void main(){

  linkedlist list = linkedlist();

  list.display();
  list.addnode(10);
  list.addnode(39);
  list.addnode(20);
  list.addnode(10);
  list.addnode(40);
  //list.display();
  //.insertbeginning(100);
 // list.display();
 // list.insertend(200);
  //list.display();

  //  list.insertafter(20, 1000);
  //  list.display();

  list.insertbefore(4, 2000);
  list.display();
  // list.headremove();
  // list.display();

  // list.removetail();
  // list.display();
  // list.display();

  // print('.....');
  // list.removeelment(10);
  // list.display();

  


  

  

  // List<int> nums = [1,2,3,4,5,6];
  // list.listtolinked(nums);
  
  
  
}