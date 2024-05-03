

class Node{
  
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class binarysearchtree{

  Node? root;

  insert(int data){
    Node newnode = Node(data);
    if(root == null){
      root = newnode;
      return;
    }

    Node? current = root;

    while(true){
      if(data < current!.data){
        if(current.left == null){
          current.left = newnode;
        }else{
          current = current.left;
        }
      }else{
        if(current.right == null){
          current.right = newnode;
        }else{
          current = current.right;
        }
      }
    }

  }

  preoder(){
    preoderhelper(root);
  }

  preoderhelper(Node? node){
    if(node == null){
      return;
    }
    print(node.data);
    preoderhelper(node.left);
    preoderhelper(node.right);


  }
}

void main(){
  binarysearchtree t = binarysearchtree();

  t.insert(10);
   t.insert(3);
    t.insert(20);
     t.insert(5);
      t.insert(12);
       t.insert(18);

       t.preoder();

   
}