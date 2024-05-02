
//bubble sort :- sorted moving the adjacent elements for a list . the higer value is placed at the right side(ascending order).
            // the largest is placed at the right end of the array in correct order and so on next passes the next largest are placed at the right ends.
            // so the right end will be sorted first.
//complexity : worst and average case o(N2) , the passes goes to n numbers and
            // it iterates through the n number of elements in each passes
            // time complexity is o(1) it uses on constant space and its inplace 


//[12,4,5,-3,-1,7,9,0];
//4,12,5,-3,-1,7,9,0
//4,5,12,-3,-1,7,9,0
//4,5,-3,12,-1,7,9,0
//4,5,-3,-1,12,7,9,0
//4,5,-3,-1,7,12,9,0
//4,5,-3,-1,7,9,12,0
//4,5,-3,-1,7,9,0,12

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
  return nums;
}

void main(){
  var nums = [12,4,5,-3,-1,7,9,0];
  print(bubblesort(nums));
}

