void main() {
  int i = 0;
  bool x = true;
  while (x) {
    switch (i) {
      case 10:
        x = false;
        break;
      default:
        print(" hello $i");
    }
    i++;
  }

  // printString(name: "Mohamed");
}

void printString({required String name}) {
  print(name);
}
