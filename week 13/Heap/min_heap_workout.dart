class minHeap{
  List<int> heaplist = [];
  minHeap(List<int> array){
    buildheap(array);
  }
  


 buildheap(List<int> array){
  heaplist = array;
  for(var i= parent(heaplist.length-1);i>=0;i--){
    shiftdown(i);
  }

  
 }

 

void  shiftdown(int currentindex){
  int endindex = heaplist.length-1;
  int leftindeex = leftchild(currentindex);
  while(leftindeex<=endindex){
    int rightindex = rightchild(currentindex);
    int indextoshift;
    if(rightindex<=endindex &&  heaplist[rightindex]<heaplist[leftindeex]){
      indextoshift = rightindex;

    }else{
      indextoshift = leftindeex;
    }

    if(heaplist[currentindex]>heaplist[indextoshift]){
      swap(heaplist, currentindex, indextoshift);
      currentindex = indextoshift;
      leftindeex = leftchild(currentindex);
    }else{
      return;
    }
  }
 }

 shiftup(int currentindex){
  int parentindex = parent(currentindex);
  while(currentindex>0 && heaplist[parentindex] > heaplist[currentindex]){
    swap(heaplist, parentindex, currentindex);
    currentindex = parentindex;
    parentindex = parent(currentindex);
  }
 }

 insert(int value){
  heaplist.add(value);
  shiftup(heaplist.length-1);
 }

 remove(){
  swap(heaplist, 0, heaplist.length-1);
  heaplist.removeAt(heaplist.length-1);
  shiftdown(0);
 }


 int parent(int index){
  return (index -1 ) ~/2;
 }

 int leftchild(int index){
  return (2*index)+1;
 }

 int rightchild(int index){
  return (2*index)+2;
 }

 swap(List<int> heaplist , i , j){
  int temp = heaplist[i];
  heaplist[i] = heaplist[j];
  heaplist[j] = temp;

 }

 display(){
  print(heaplist);
 }
}

void main(){
  List<int> array = [10, 5, 25, 3, 30, 22, 12];
  minHeap h = minHeap(array);
  h.insert(100);
  h.insert(20);
  h.insert(13);

  h.display();

  print('-----');

  h.remove();

  h.display();
}