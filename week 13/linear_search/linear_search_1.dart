
//finding the even and odd

linearsearch(List<int> nums){
  for(var num in nums){
    if(num%2==0){
      print("$num is even");
    }
    else{
      print('$num is odd');
    }
  }
}

void main(){

 List<int> nums = [5,12,7,8,3,6];
  linearsearch(nums);
}