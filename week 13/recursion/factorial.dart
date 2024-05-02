
void main(){

  int num = 5;
 int? result = factorial(num);
  print(result );
}

int? factorial(num){

  if(num<=0){
    return 1;
  }

  return num*factorial(num-1);
}