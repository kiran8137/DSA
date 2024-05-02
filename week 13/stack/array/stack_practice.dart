class stack {
  List<int> list = [];

  void push(int data) {
    // for(var i=0;i<data.length;i++){
    //   list.add(data[i]);

    // }
    //list.addAll(data);

    list.add(data);
  }

  void pop(){
    if(list.isEmpty){
      print('there is no stack');

    }else{
      // for(var i=list.length-1;i>0;i--){
      //   list[i] = list[i-1];
         
         
      // }
      list.removeLast();
    }
  }

  peek(){
    if(list.isEmpty){
      print('stack underflow');
    }else{
      print(list.last);
    }
  }

  void display() {
    print(list);
  }
}

void main() {
  stack s = stack();
  s.push(10);
  s.push(20);
  s.push(30);
  s.push(40);

  // var nums = [10,20,30,40];
  // s.push(nums);
  s.pop();
  s.display();

  s.peek();
}
