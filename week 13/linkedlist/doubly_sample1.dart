

class Node{
  Node? prev;
  int data;
  Node? next;

  Node(this.data);
}

class doublylinkedlist{
  Node? head;
  Node? tail;

  createnode(int data){
    Node newnode = Node(data);
    if(head == null){
      head = newnode;
    }else{
      tail?.next = newnode;
      newnode.prev =  tail;
    }

    tail = newnode;
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

  sizeoflist(){
    int count = 0;
    if(head == null){
      print('no list found');
    }else{

      Node? temp = head;
      while(temp!=null){
        count++;
        temp = temp.next;
      }
    }

    print('size of the list is $count');
  }

  findlargest(){
    
  int largest = head!.data;
  Node? temp = head;
    if(head == null){
      print('no list found');
    }else{

      
      
       while( temp!= null){
        if(temp.data > largest){
          largest = temp.data;
        }
        temp = temp.next;
       }
    }

    print("largest is $largest");
  }


  //Find pairs with given sum 

  sum(){
    if(head == null){
      print('no list found');
    }else{
      Node? temp = head;
      Node? nextnode = temp!.next;
      while(temp!=null){
        if(temp.data == nextnode!.data){

        }
      }
    }
  }
}

void main(){
  doublylinkedlist list = doublylinkedlist();

  list.createnode(10);
  list.createnode(20);
  list.createnode(100);
  list.createnode(40);
  list.createnode(40);
  list.display();

  //list.sizeoflist();

  list.findlargest();
}