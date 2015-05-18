module.exports = {
  reverseIt: function(string) {
      var newString = "";
      var count = string.length;
      while (count>0) {
        newString += string[count];
        count--;
      }
  return newString;
  }
}