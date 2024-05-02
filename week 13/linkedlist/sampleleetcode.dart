

 

void main(){
 var nums = [1,2,1,3,2,5];
 var i,j;

    for(  i=0;i<nums.length;i++){
      for(  j=0;j<nums.length;j++){
        if(nums[i]==nums[j]){
          nums.remove(nums[j]);
          nums.remove(nums[i]);
        }
         
         
         
      }
      i--;
      j--;
    }

   print(nums);
}