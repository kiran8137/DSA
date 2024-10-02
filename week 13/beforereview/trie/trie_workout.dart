
import 'dart:collection';

class trie{
  HashMap children = HashMap();
  bool? isend  = false;
}

class Trie{

   trie root = trie();

  insert(String str){
    trie node = root;
    for(var i=0;i<str.length;i++){
      var char = str[i];
      if(!node.children.containsKey(char)){
        trie newnode = trie();
        node.children[str[i]] = newnode;
      }
        node = node.children[str[i]];
      
 
     

    }
     node.isend = true;
  }

  printallvalues(){
    List<String> list = [];
    String word = "";
    printhelper(root , word , list);
    return list;
  }

  printhelper(trie node , String word ,List<String> list){
    if(node.isend == true){
      list.add(word);
    }
    node.children.forEach((key, value) {
      printhelper(value, word + key, list);
    });
  }


  autocomplete(String str){
    trie node = root;
    for(var i in str.split('')){
      if(!node.children.containsKey(i)){
        return [];
      }
      node = node.children[i];
    }
    List<String> result = [];
    printhelper(node , str , result);
    return result;
  }

  

}

void main(){
  Trie t = Trie();

  t.insert("listonfermi");
  t.insert("suresh varma");
  t.insert("varma");
  t.insert("suresh");
  
  print(t.printallvalues());
  //print(t.autocomplete('li'));
}