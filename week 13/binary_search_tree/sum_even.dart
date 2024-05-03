
class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class binarysearchtree{
  Node? root;

  insertion(int data){
    Node newnode = Node(data);
     
     Node? currentnode = root;
    if(root == null){
      root = newnode;
      return;
    }

    while(true){
      if(data < currentnode!.data){
        if(currentnode.left == null){
          currentnode.left = newnode;
          break;
        }else{
          currentnode = currentnode.left;
        }
      }else{
        if(currentnode.right == null){
          currentnode.right = newnode;
          break;
        }else{
          currentnode = currentnode.right;
        }
      }
    }
  }


  //preorder
  

  preoder(){
   print(preorderhelper(root)); 
  }

  preorderhelper(Node? node){
    if(node == null){
      return 0;
    }
    num sum = 0;
    if(node.data %2 ==0){
       sum = sum + node.data;
        
    }
    //print(node.data);
   sum = sum + preorderhelper(node.left);
   sum = sum + preorderhelper(node.right);

  return sum;
    
  }

  inorder(){
    inorderhelper(root);
  }

  inorderhelper(Node? node){
    if(node == null){
      return 0;
    }

    inorderhelper(node.left);
    print(node.data);
    inorderhelper(node.right);
  }
}

void main(){
  binarysearchtree tree = binarysearchtree();
  tree.insertion(10);
  tree.insertion(5);
  tree.insertion(15);
  tree.insertion(3);
  tree.insertion(18);

  tree.insertion(12);
  tree.insertion(8);
  //tree.preoder();
  tree.inorder();
}