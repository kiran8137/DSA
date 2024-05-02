class Node {
  Node? next;
  int data;
  Node(this.data);
}

class queue {
  Node? front;
  Node? rear;

  enqueue(int data) {
    Node newnode = Node(data);
    if (rear == null) {
      rear = front = newnode;
      return;
    }
    rear?.next = newnode;
    rear = newnode;
  }

  dequeue() {
    if (front == null) {
      print('queue is empty');
    } else {
      front = front?.next;
    }

    if (front == null) {
      rear = null;
    }
  }

  peek() {
    print(front?.data);
  }

  display() {
    if (rear == null) {
      print('empty queue');
    } else {
      Node? temp = front;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main() {
  queue Q = queue();
  Q.enqueue(10);
  Q.enqueue(20);
  Q.enqueue(30);
  Q.enqueue(40);
  Q.enqueue(50);
  // Q.dequeue();
  Q.display();
  print('----------');
  Q.peek();
}
