//Write a function that takes an array of integers and a target integer as input 
//and returns the number of occurrences of the target integer in the array.

void main() {
  List<int> nums = [20, 45, 55, 6, 34, 50 , 20, 44, 20];
  int target = 20;
   occurance(nums, target);

   
}

occurance(List<int> nums , int target){
  int count=0;
  for(var num in nums){
    if(num == target){
      count++;
    }
  }

print(count);

}
