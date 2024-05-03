
import 'dart:collection';

 

class trienode{
  HashMap children = HashMap();
  bool? isend;


}

class trie{

  trienode root = trienode();

  insert(String str){
    trienode node = root;

    for(var i=0;i<str.length;i++){
      var char = str[i];
      if(!node.children.containsKey(char)){
        trienode newnode = trienode();
        node.children[str[i]] = newnode;
      }

      node = node.children[str[i]];
    }

    node.isend = true;


  }

  contains(String str){
    trienode node = root;
    for(var i=0;i<str.length;i++){
      if(node.children[str[i]] == null || !node.children.containsKey(str[i])){
        return false;
      }
      node = node.children[str[i]];
    }
    return true;
  }

  printallvalues(){
    List<String> result = [];
    String word = "";
    printvaluehelper(root, word, result);
    return result;
  }

  printvaluehelper(trienode node , String word,List<String> result ){
    if(node.isend == true){
      result.add(word);
    }

    node.children.forEach((key, value) {
      printvaluehelper(value, word + key, result);
    });
  }



  autocomplete(String word){
    trienode node = root;
    for(var i in word.split('')){
      if(!node.children.containsKey(i)){
        return [];
      }
      node = node.children[i];
    }
    List<String> list = [];
    printvaluehelper(node , word , list);
    return list;
  }

}

void main(){
  trie t = trie();
  t.insert("liston");
   t.insert("akil");
    t.insert("akilan");
  //print(t.contains("lis"));
  print(t.printallvalues());
  //print(t.autocomplete('aki'));

}