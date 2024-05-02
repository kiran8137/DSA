
class hashtable{

  int size;
  late List<dynamic> array;

  hashtable(this.size){
    //array = List.filled(size, []);
    array = List.generate(size, (index) => null);
  }


  int hash(key){
    int index = 0;
    index = key.hashCode.abs()%size;

    return this.quadratic(index);
  }

  int linerprobing(index){
    int start = index;
    var i=0;

    while(start < this.size){
      index += i ;
      if(this.array[index] == null){
        return index;
      }

      start++;
      i++;
    }

    return -1;
  }

  int quadratic(index){
    int start = index;
    var i=0;
     
     while(start<this.size){
      index += i*i;
      if(array[index]==null){
        return index;
      }

      start++;
      i++;
     }
     return -1;
  }

  set(key , value){
    int index = this.hash(key);
    //var bucket = [key,value];

    if(index == -1){
      return print('fail to hash');
    }

    return this.array[index]= [key,value];


  }

}

void main(){
  hashtable hashlist = hashtable(10);
   
  hashlist.set("name", 'kiran');
  hashlist.set("name" , "klgd");
  hashlist.set("name" , "klgd");

  print(hashlist.array);
}