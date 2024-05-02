

 

class hashtable{
  int size;
  var array;
  

  hashtable(this.size){
    this.array = List.filled(size , []); // declaring a list with a fixed size
  }

//hash function to create a index value to place the key value pair
  int hash(key){
     int index = 0;
    index = key.hashCode.abs()%size;
     return index;
    // if(array[index]==null){
    //   return index;
    // }

    // for(var i=index;i<size;i++){
    //   if(array[index]==null){
    //     return index;
    //   }
    }
  

   set(key , value){
    int? index = this.hash(key);
    var bucket = [key,value];

     this.array[index] = bucket;
   }

   get(key){
    int? index = this.hash(key);
    
    print(this.array[index][1]);
   }
   }

   


void main(){
  hashtable hashlist = hashtable(5);

  hashlist.set("name", "kiran");
  hashlist.set("placessss" , "kollengode");
  hashlist.get("placessss");

  print(hashlist.array);


   
}

