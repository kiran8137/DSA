//prefix

import 'dart:collection';
import 'dart:ffi';
 



class TrieNode{
  HashMap children = HashMap();
  bool? isend;

}



class Trie{

  TrieNode root = TrieNode();

  void insert(String str){
    TrieNode node = root;

    for(var i=0;i<str.length;i++){
      var char = str[i];
      if(!node.children.containsKey(char)){
        TrieNode newnode = TrieNode();
        node.children[str[i]] = newnode;
      }

      node = node.children[str[i]];
    }

    node.isend = true;
  }




bool contains(String str){
  TrieNode node = root;
  for(var i=0;i<str.length;i++){
    if(node.children[str[i]] == null || !node.children.containsKey(str[i])){
      return false;
    }

    node = node.children[str[i]];
  }

  return true;
}

 

 

  
}

void main(){
  Trie trie = Trie();

  trie.insert('liston');
  trie.insert("akil");
  
  print(trie.contains('li'));
}

