class MatematikRepository {
  int toplama(String a1, String a2) {
    int aa1 = int.parse(a1);
    int aa2 = int.parse(a2);
    int t = aa1 + aa2;
    return t;
  }

  int carpma(String a1, String a2) {
    int aa1 = int.parse(a1);
    int aa2 = int.parse(a2);
    int c = aa1 * aa2;
    return c;
  }
}
