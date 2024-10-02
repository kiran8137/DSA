
class Node {
  int data;
  Node? left, right;

  Node(this.data);
}

class binarysearchtree {
  Node? root;

  insertion(int data) {
    Node newnode = Node(data);

    Node? currentnode = root;
    if (root == null) {
      root = newnode;
      return;
    }

    while (true) {
      if (data < currentnode!.data) {
        if (currentnode.left == null) {
          currentnode.left = newnode;
          break;
        } else {
          currentnode = currentnode.left;
        }
      } else {
        if (currentnode.right == null) {
          currentnode.right = newnode;
          break;
        } else {
          currentnode = currentnode.right;
        }
      }
    }
  }

  contains(int data) {
    Node? currentnode = root;
    while (currentnode != null) {
      if (data < currentnode.data) {
        currentnode = currentnode.left;
      } else if (data > currentnode.data) {
        currentnode = currentnode.right;
      } else {
        return print(true);
      }
    }
    return print(false);
  }

  //inorder

  inorder() {
    inorderhelper(root);
  }
   inorderhelper(Node? node) {
    if (node != null) {
      inorderhelper(node.left);
      print(node.data);
      inorderhelper(node.right);
    }
  }
  //preorder
  preorder() {
    preorderhelper(root);
  }
  preorderhelper(Node? node) {
    if (node == null) {
      return;
    }
    print(node.data);
    preorderhelper(node.left);
    preorderhelper(node.right);
  }
  //postorder
  posteorder() {
    postorderhelper(root);
  }
  postorderhelper(Node? node) {
    if (node == null) {
      return;
    }
    postorderhelper(node.left);
    postorderhelper(node.right);
    print(node.data);
  }

  int? getNearest(int target) {
    Node? current = root;
    int? nearest = current?.data;

    while (current != null) {
      if ((target - nearest!).abs() > (target - current.data)) {
        nearest = current.data;
      }
      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }

    return nearest;
  }
  // display() {
  //   print(this.root);
  // }
}

void main() {
  binarysearchtree tree = binarysearchtree();
  tree.insertion(10);
  tree.insertion(5);
  tree.insertion(15);
  tree.insertion(3);
  tree.insertion(18);

  tree.insertion(12);
  tree.insertion(8);

  tree.contains(30);
  //tree.inorder();
  // tree.preorder();
  //tree.posteorder();

  //print(tree.getNearest(20));
}
