
sum(num){

  if(num<=1){
   return 1;


    }
     return num+sum(num-1);

   
}

void main(){
  int num = 10;

  int result = sum(num);

  print(result);
}