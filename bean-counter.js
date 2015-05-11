function countChar(string, char) {
  var counted = 0;
  for (var i = 0; i < string.length; i++)
    if (string.charAt(i) == char)
      counted += 1;
  return counted;
}

function countBs(string) {
  return countChar(string, "B");
}