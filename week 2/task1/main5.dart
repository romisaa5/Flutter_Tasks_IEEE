
// Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25] *and makes a new list of only the first and last elements of the given list.
// For practice, write this code inside a function*
void main() {
  List a = [5, 10, 15, 20, 25];
  List result = nums(a);
  print(result);
}

List nums(List Anums) {
  List Bnums = [];
  for (var i = 0; i < Anums.length; i++) {
    if (Anums[i] == Anums[0] || Anums[i] == Anums[Anums.length - 1]) {
      Bnums.add(Anums[i]);
    }
  }
  return Bnums;
}
