function range(start, end) {
  var array = [];
    for (var i = start; i <= end; i++)
      array.push(i);
  } else {
    for (var i = start; i >= end; i++)
      array.push(i);
  }
  return array;

function sum(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++)
    total += array[i];
  return total;
}

console.log(sum(range(1, 10)));
// → 55
console.log(range(5, 2, -1));
// → [5, 4, 3, 2]