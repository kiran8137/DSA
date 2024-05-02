//Given a sorted array of integers, implement binary search to find if a given element exists in the array.

void main() {
  List<int> nums = [10, 20, 30, 40, 50, 60];
  int target = 10;

  int? result = binarysearch(nums, target);

  if (result != -1) {
    print("the target is found");
  } else {
    print("the target is not found");
  }
}

int? binarysearch(List<int> nums, int target) {
  int low = 0;
  int high = nums.length - 1;
  int mid = 0;

  while (low <= high) {
    mid = (low + high) ~/ 2;

    if (nums[mid] == target) {
      return mid;
    } else if (target < nums[mid]) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
