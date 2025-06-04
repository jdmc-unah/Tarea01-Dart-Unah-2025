// 1. Cree un programa el cual imprima una lista con los primeros 15 números de
// la sucesión de Fibonacci.
void main() {
  List<int> fibonacci = [0, 1];
  for (var i = 0; i < 13; i++) {
    fibonacci.add(fibonacci[i] + fibonacci[i + 1]);
  }
  print(fibonacci);
}
