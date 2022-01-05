void main(List<String> args) {
  print(mergeTwoList([1, 2, 4], [1, 3, 4]));
}

List mergeTwoList(list1, list2) {
  return [list1, list2].expand((x) => x).toList()..sort();
}
