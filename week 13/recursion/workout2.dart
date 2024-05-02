//Factorial Calculation

factorial(num){
  if(num<=0){
    return 1;
  }

  return num * factorial(num-1);
}

void main(){
  var num = 5;
  
  print (factorial(num));

}