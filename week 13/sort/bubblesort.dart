

bubblesort(List<int> nums){

  for(var i=0;i<nums.length;i++){
    for(var j=0;j<nums.length-1-i;j++){
      if(nums[j]>nums[j+1]){
        var temp = nums[j+1];
        nums[j+1]=nums[j];
        nums[j]=temp;
      }
    }
  }
  print(nums);
}

void main(){
  List<int> nums = [10,-1,3,53,7,9,99];
  bubblesort(nums);
  
}