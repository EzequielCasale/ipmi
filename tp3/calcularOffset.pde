int calcularOffset(int j) {
  int offset;
  if (j % 2 == 1) {
    offset = 10;
  } else if (j % 2 == 2) {
    offset = 15;
  } else if (j%3==1) {
    offset = 20;
  } else {
    offset = 0;
  }
  return offset;
}
