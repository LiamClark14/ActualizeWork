// Exercise: (work in pairs)
// Solve the following problems first in Ruby, then convert the solution to JavaScript.
// 1. Write a function that takes in an array of numbers and returns its sum.
// 2. Write a function that takes in an array of strings and returns the smallest string.

// function smallestString(array) {
//   var smallest;
//   smallest = array[0];
//   array.forEach(function (string) {
//     if (string.length < smallest.length) {
//       smallest = string;
//     }
//   });
//   return smallest;
// }

// console.log(smallestString(["cat", "blizzard", "hotdog"]));
// 3. Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
// 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.

// function startsWithA(array) {
//   var count = 0;
//   array.forEach(function (word) {
//     if (word.charAt(0) === 'A' || word.charAt(0) === 'a') {
//       count++;
//     }
//   });
//   return count;
// }

// console.log(startsWithA(["Apple", "app", "Aardvark", "bat"]));
// 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
// 6. Write a function that takes in an array of numbers and returns the product of all the numbers(each number multiplied by each other).

// function product(array) {
//   var product = 1;
//   array.forEach(function (multiplier) {
//     product *= multiplier;
//   })
//   return product;
// }
// console.log(product([1, 2, 3, 4]));
// 7. Write a function that takes in an array of numbers and returns the two smallest numbers.
// 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
// 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
// 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
// BONUS PROBLEMS
// Write a function that accepts a string and returns whether it’s a palindrome.
// Write a function to generate / print / store the first "n" prime numbers.
// Given a tic - tac - toe board(matrix of 3 x 3), write a function that can check to see whether X or O won.
// DOUBLE BONUS:
// Use the Ruby.map /.select /.reduce shortcuts to rewrite some of the Ruby problems!
// Use the JavaScript.map /.filter /.reduce shortcuts to rewrite some of the JavaScript problems!
setTimeout(function () { console.log("First Task done!") }, 2000);
setTimeout(function () { console.log("Second Task done!") }, 4000);
setTimeout(function () { console.log("Third Task done!") }, 6000);

var array = ["first", "second", "third"]

