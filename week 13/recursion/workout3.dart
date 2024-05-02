//Write a recursive function to calculate the sum of digits of a positive integer.

sum(int num){

  if(num<0){
    return 1;
  }

  return num+sum(num-1);
}

void main(){
  var num = 5;
  print(sum(num));
}

