

 

import 'dart:collection';
import 'dart:math';

class hashtable{

  int size;
  var array;
  
  hashtable(this.size){
    
    this.array = List.filled(size, []);

  }


  int hash(key){
    int index=0;
    index = key.hashCode.abs()%size;
    return index;
  }


  set(key , value){

    int index = this.hash(key);
    var bucket = [key,value];

    if(array[index] is List){
      print('dsfdsfdf');
      // (this.array[index] as List).add(bucket);
      array[index].add(bucket);
    }
    else{
      print('ghhh');
      this.array[index] = [bucket];
    }
  }
}

void main(){
  hashtable hashlist = hashtable(8);

  hashlist.set("name", "kiran");
  print(hashlist.array);

}