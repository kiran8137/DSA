import 'dart:mirrors';

class Node {
  Node? next;
  int data;
  Node? prev;

  Node(this.data);
}

class doubly {
  Node? head;
  Node? tail;

  addfirst(data) {
    Node newnode = Node(data);

    if (this.head != null) {
      newnode.next = this.head;
      this.head?.prev = newnode;
    } else {
      this.tail = newnode;
    }
    this.head = newnode;
  }

  addlast(data) {
    Node newnode = Node(data);

    if (this.head != null) {
      newnode.prev = tail;
      tail?.next = newnode;
    } else {
      this.head = newnode;
    }
    this.tail = newnode;
  }

  reverse() {
    Node? curr = this.head;
    Node? temp;
    while (curr != null) {
      //1000, 200, 400, 300
      //300, 400, 200, 1000

      //loop2 : 200 (400, 300) 1000

      temp = curr.next; //400,300
      curr.next = curr.prev; // 200 1000
      curr.prev = temp; // 400 (300) 200 1000

      if (curr.prev != null) this.head = curr.prev;
      curr = curr.prev;
    }
  }

  insert(int data, int index) {
    int count = 0;
    Node newnode = Node(data);
    if (this.head == null) return 'list is empty';

    Node? temp = this.head;

    if(count == 0){
      
      newnode.next = temp;
      temp?.prev = newnode;
    }

    while (temp != null) {

      

       
      if (count == index) {
        newnode.prev = temp;
        newnode.next = temp.next;

        temp.next = newnode;
        newnode.next?.prev = newnode;

        
      }
      temp = temp.next;
      count++;
    }
  }

  display() {
    if (head == null) {
      print('not found');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main() {
  doubly list = doubly();

  list.addlast(200);
  list.addlast(400);
  list.addlast(300);
  //list.addfirst(1000);
  list.insert(5000, 0);
  // list.reverse();
  list.display();
}
