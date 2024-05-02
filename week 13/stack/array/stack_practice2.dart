//remove vowels from your name

class stack {
  List<dynamic> list = [];

  push(data) {
    list.add(data);
  }

  pop() {
    list.removeLast();
  }

  display() {
    print(list);
  }

  removevowels(String name) {
    List<String> vowels = [
      'a',
      'e',
      'i',
      'o',
      'u',
    ];
    String res = '';

    for (var i = 0; i < name.length; i++) {
      if (!vowels.contains(name[i].toLowerCase())) {
        res += name[i];
      }
    }

    print(res);
  }
}

void main() {
  stack s = stack();

  var name = 'liston fermi';

  s.push(name);
  s.display();

  s.removevowels(name);
}
