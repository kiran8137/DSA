class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}

class bst {
  Node? root;

  insertion(int data) {
    Node newnode = Node(data);

    if (root == null) {
      root = newnode;
      return;
    }
    Node? current = root;
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newnode;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newnode;
        } else {
          current = current.right;
        }
      }
    }
  }

  contains(int data){
    Node? current = root;
    while(current!=null){
      if(data<current.data){
        current = current.left;
      }else if(data>current.data){
        current = current.right;
      }else{
        return print(true);
      }
    }
    return print(false);
  }
  
}

void main() {
  bst t = bst();
  t.insertion(10);
  t.insertion(3);
  t.insertion(15);
  t.insertion(6);
  t.insertion(20);
  t.insertion(9);

  t.contains(9);
  
}
