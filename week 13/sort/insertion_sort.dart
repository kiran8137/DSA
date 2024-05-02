
insertionsorting(List<int> nums){

  for(var i=1;i<=nums.length-1;i++){
    int current = nums[i];
    int j = i-1;
    while(j>=0 && nums[j]>current){
      nums[j+1] = nums[j];
      j--;
    }
    nums[j+1] = current;
  }

  print(nums);
}

void main(){
  List<int> nums = [10,3,53,7,9,99];
  insertionsorting(nums);
}