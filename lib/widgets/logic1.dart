import 'dart:ffi';

class logic1 {
  String logic(String s) {
    int x;
    var temp = '', y;
    for (int i = 0; i < s.length; i++) {
      x = s.codeUnitAt(i);
      y = x.toString();
      temp = temp + y + " ";
    }
    return temp;
  }
}
