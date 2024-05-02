//Implement a function that takes an array of integers and a
//target integer as input and returns the index of the target integer in the array if it exists, otherwise return -1.

void main() {
  List<int> nums = [20, 45, 55, 6, 34, 50];
  int target = 55;
  int? result = searchelement(nums, target);

  if (result != null) {
    print(result);
  } else {
    print(-1);
  }
}

int? searchelement(List<int> nums, int target) {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
}
