binarysearch(int target, List<int> list) {
  int low = 0;
  int high = list.length - 1;
  int mid = 0;

  while (low <= high) {
    mid = ((low + high)/2).floor();

    if (list[mid] == target) {
      list[mid]=8;
      return list;
    } else if (list[mid] < target) {
      low = mid + 1;
    } else if (list[mid] > target) {
      high = mid - 1;
    }
  }

  return -1;
}

void main() {
  var target = 3;
  var nums=[1,2,3,4,5];
  print(binarysearch(target, nums));
}
