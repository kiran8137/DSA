
void main(){
 var word = "hghyyydddddddd";
var largestcount = 0;
var count;
var splitted = word.split('');
  for(var i=0;i<splitted.length;i++){
    count = 0;
    if(splitted[i] != '-1'){
       for(var j=i+1;j<splitted.length;j++){
      if(splitted[i] == splitted[j]){
        count++;
        splitted[j] = '-1';
      }
    }
    if(largestcount > count){
      largestcount = count;
    }
    }
   

  }
  print(largestcount);
}