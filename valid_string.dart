void main(List<String> args) {
  print(isValid("()[]{}"));
}

bool isValid(String s) {
  Map chars_set = {')': '(', ']': '[', '}': '{'};
  var open_chars = chars_set.values;
  List stack = [];

  for (int i = 0; i < s.length; i++) {
    var item = s[i];

    if (open_chars.contains(item)) {
      stack.add(item);
    } else if (stack == []) {
      return false;
    } else if (chars_set[item] != stack.removeLast()) {
      return false;
    }
  }

  return stack.length == 0;
}
