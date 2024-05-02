

//stack workout using linkedlist

class Node{
  Node? next;
  int data;
  Node(this.data);
}

class stack{
  Node? top;

  display(){
    if(top==null){
      print("there is no stack");
    }else{
      Node? temp = top;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  push(int data){
    Node newnode = Node(data);
    if(top==null){
       top = newnode;
    }else{
      newnode.next =  top;
       top = newnode;
    }
  }

  pop(){
    if(top == null){
      print('stack underflow');
    }else{
      top = top?.next;
    }
  }

  printtop(){
    print(top?.data);
  }
}

void main(){
  stack list = stack();

  list.push(10);
  list.push(20);
  list.push(30);
  list.push(40);
   list.display();
  print('--------');
 
  list.pop();
  
  list.display();
  

}