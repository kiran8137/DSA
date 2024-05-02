int a =0;
int b = 1;
void main(){
  int? num = 10;
  print('$a , $b');
  fibonnoci(num-2);
}

fibonnoci(num){
   
  
  
  if(num>0){
   
   int c = a+b;
    a = b;
    b = c;
    print('$c ');
    fibonnoci(num - 1);
  }

}