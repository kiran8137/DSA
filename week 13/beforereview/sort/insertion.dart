//insertion sorting :- sorting by comparing with the previous elements of the list.
//Time complexity :- O(N2)
//space complexity :- O(1);


//[12,4,5,-3,-1,7,9,0];
//[4 ,12]

insertion(List<int> nums){

    for(var i=1;i<=nums.length-1;i++){ 
      var current = nums[i]; // element which is taken for comparing with other
      var j=i-1; // previous element which is to be compared with the current

      while(j>=0 && nums[j]>current){
        nums[j+1] = nums[j];
        j--;
      }

      nums[j+1] = current;
    }

    return nums;
}

void main(){
  var nums = [12,4,5,-3,-1,7,9,12,0];
   
  print(insertion(nums));
}

