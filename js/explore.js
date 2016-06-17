// Store string "hello" as a variable (var string = "hello")
// String has an index of 4. Assign the character at index 4 to index 0. Assign index 3 to index 1. 
// Initiate a loop over the string.
// Set index in loop to 4. While the index of the character is greater than or equal to 0, return the character corresponding to the current index.
// Reduce the index by 1 (i--)
// Expect calling the loop to reduce 5 strings ("o", "l", "l", "e", "h").
// Store 5 strings in an array. Assign variable of "array" to array
// Add 5 strings together to create 1 string using join. Store in new variable "reverse"
// Print reverse to verify method works as planned 


var hello = "hello"
var array = []

for (var i = 4; i >= 0; i--) {
	array.push(hello[i]);
}

var reverse = array.join(' ');

//console.log(array)
console.log(reverse)
