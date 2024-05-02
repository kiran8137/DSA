//Given a sorted array of integers containing duplicates, find the first and last occurrence of a given target value.

void main(){

  List<int> nums = [ 1, 2, 2, 2, 2, 3, 4, 7, 8, 8];
  int target = 8;

  int? first = firstoccurance(nums , target);
  int? last = lastoccurance(nums , target);

  print("first occurance is $first");
  print("last occurance is $last");
}

int? firstoccurance(List<int> nums , int target){

    int low = 0;
    int high = nums.length;
    int mid = 0;

    while(low<=high){
      mid = (low + high)~/2;
      if(nums[mid]==target){
        return mid;
      }
      else if(target < nums[mid]){
        high = mid-1;

      }
      else{
        low = mid-1;
      }
    }
    return -1;
}

int? lastoccurance(List<int> nums , int target){

    int low = 0;
    int high = nums.length;
    int mid = 0;

    while(low<=high){
      mid = (low + high)~/2;
      if(nums[mid]==target){
        return mid;
      }
      else if(target < nums[mid]){
        high = mid-1;

      }
      else{
        low = mid+1;
      }
    }
    return -1;
}