
//find position in binary search
void main(){

    List<int> nums = [10,20,30,40,50,60];
    int target =60;
    
    int? result = binarysearch(nums, target);

    print(result);
}

int? binarysearch(List<int> nums , int target){

  int low = 0;
  int high = nums.length-1;
  int mid = 0;

  while(low<=high){
    mid = (high+low) ~/2;

    if(nums[mid]==target){
    mid++;
      return mid;
    }
    else if(target<nums[mid]){
      high = mid-1;
    }
    else{
      low = mid+1;
    }
  }

   return -1;
}




