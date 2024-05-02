

printnums(num , i){
  if(num<1){
    return;
  }
  
  var a = num;
  a=a-(num-i);
   print(a);
  i++;
  return printnums(num-1 , i);
}

void main(){
  
  
  var num = 10;
  
  printnums(num , 1);
   
}