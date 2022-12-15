// Write a dart code to read 2 lists and return a list that contains only the elements that are
// common between them.

void main(List<String> args) {
  List<int> list1 = [1,2,3,4,5];
  List<int> list2 = [1,3,5,7,9];

  list1.removeWhere((element) => !list2.contains(element));

  print(list1);
}