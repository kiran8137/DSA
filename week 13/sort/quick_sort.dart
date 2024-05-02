import 'dart:math';

void main() {
  var nums = [
    2,
    5,
    3,
    10,
    50,
    60,
    3,
    1,
    5,
  ];

  nums.sort();
  print(nums);
  print('---------');
  quicksort sort = quicksort();

  print(sort.quick(nums));
}

class quicksort {
  List<int> quick(List<int> nums) {
    sort(nums, 0, nums.length - 1);
    return nums;
  }

  sort(List<int> nums, int left, int right) {
    if (left >= right) {
      return;
    }

    int pivot = left;
    int leftindex = left + 1;
    int rightindex = right;

    while (leftindex <= rightindex) {
      if (nums[leftindex] > nums[pivot] && nums[rightindex] < nums[pivot]) {
        swapping(nums, leftindex, rightindex);
        leftindex++;
        rightindex--;
      }

      if (nums[leftindex] <= nums[pivot]) {
        leftindex++;
      }
      if (nums[rightindex] >= nums[pivot]) {
        rightindex--;
      }
    }
    swapping(nums, rightindex, pivot);
    sort(nums, left, rightindex - 1);
    sort(nums, rightindex + 1, right);
  }

  swapping(List<int> nums, int i, int j) {
    int temp = nums[i];
    nums[i] = nums[j];
    nums[j] = temp;
  }
}
