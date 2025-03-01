typedef SumFuncType = int Function(int, int);

int sum(int a, int b) {
  return a + b;
}

void main() {
  SumFuncType mySumFunction = sum;

  print(mySumFunction(1, 2));
}
