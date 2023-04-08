class StringUtils {
  static List<String> numericSeperation(String string) {
    List<String> list = [];
    String base = '';
    for (int i = 0; i < string.length - 1; i++) {
      if (string[i + 1].contains(RegExp(r'[0-9]')) ||
          string[i + 1] == string[string.length - 1]) {
        if (base.isNotEmpty) {
          list.add(base);
          base = '';
        }
      } else {
        base += string[i];
      }
    }
    list[list.length - 1] += string.substring(string.length - 2);
    return list;
  }
}
