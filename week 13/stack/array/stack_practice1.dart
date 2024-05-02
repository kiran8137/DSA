class stack {
  var list = [];

  void push(String data) {
    list.add(data);
  }

  dynamic pop() {
    if (list.isEmpty) {
      print('stack underflow');
    } else {
      var k = list.removeLast();
      return k;
    }
  }

  display() {
    print(list);
  }

  reverse(String name) {
    // var reveresed = name.split('').reversed.join();
    var reversed = '';
    for (var i = 0; i < name.length; i++) {
      // list.add(name[i]);
      push(name[i]);
    }

    var int = 0;
    print(list);
    while (list.isNotEmpty) {
      reversed += pop();
    }

    print(reversed);
  }
}

void main() {
  String name = 'akil and liston';

  stack s = stack();

  //s.push(name);
  // s.display();

  s.reverse(name);
}
