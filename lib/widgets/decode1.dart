class decode1 {
  String logic(String s) {
    int r;
    var temp = '', subString;
    var list = s.split(' ');
    for (var l in list) {
      if (l == "") break;
      r = int.parse(l);
      subString = String.fromCharCode(r);
      temp = temp + subString;
    }
    return temp;
  }
}
