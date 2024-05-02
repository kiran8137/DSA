
selectionsort(List<int> nums){

  
 
  for(var i=0;i<nums.length;i++){
    for(var j=i;j<nums.length;j++){
      if(nums[i]>nums[j]){
        int temp = nums[i];
        nums[i]=nums[j];
        nums[j]=temp;
      }

    }
    
  }
  print(nums);
}

void main(){

   List<int> nums = [10,3,53,7,9,99];
   selectionsort(nums);
}
