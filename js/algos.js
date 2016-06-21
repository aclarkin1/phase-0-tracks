//Release 0

// Objective: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// Establish 2 arrays: phrases, and longest_phrase. longest_phrase should be blank
// For each item in the phrases array, determine the item's length
// Initiate a loop to print the length of each item in the array
// If the length of the item evaluated is longer than the item in longest_phrase, push the item into longest_phrase
  // And pull the existing item out of longest phrase

var phrases = ["Andy", "Andy Bloody Murray", "Andrew Murray", "Andy Reginald George Murray",  "Andy Murray"];
var longest_phrase = ["a"];

var find_longest = function(inputPhrases){
for (var i = 0; i < inputPhrases.length; i++) {
    if (inputPhrases[i].length > longest_phrase[0].length) {
		longest_phrase.push(inputPhrases[i]);
    	longest_phrase.splice(0,1);
    }
}
return(longest_phrase);
}

console.log(longest_phrase);
console.log(find_longest(rand(5)));

//Release 1

// Objective evaluate two key-value pairs and determine if any of the values match
// Write a function that takes two arguments. Each argument will be a key-value pair
// Separate the keys and values into separate data structures, so that the values can be more easily compared
// Loop through both data structures containing value. Begin both loops at 0 and increase index by 1 each time the loop runs
// If the value corresponding to the current index matches, evaluate to true and print "Match!" to confirm
// Else, evaluate to false and print "No match" to confirm


function find_match(person1, person2) {
  var key1 = []
  var value1 = []
  var key2 = []
  var value2 = []
  
for (var x in person1) {
  key1.push(x);
  value1.push(person1[x]);
}

for (var y in person2) {
  key2.push(y);
  value2.push(person2[y]);
}

for (var i = 0; i < value1.length; i++){
  for (z = 0; z < value2.length; z++) {
    if (value1[i] == value2[z]) {
      console.log("Match!")
      return true;
    }
    else {
      console.log("No match");
      return false;
    }
  }
}  
}

//Driver code to call method
//find_match({name: "Aaron", age: 28}, {name: "Sam", age: 31});

// Release 2
// Initiate a function randword that takes an integer as an argument
// Within the function, initiate a blank string as a variable (string)
// Initiate a string of characters to draw from as a variable (chars)
// Initiate an empty array as a variable
// Initiate a loop within the variable - while i is less than the integer passed as an argument, generate a string of random characters from the "chars" variable
// Push each generated word into the blank array
// Return the array

function rand(times){
    var string = "";
    var chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var array = [];
    for (i = 0; i < times; i++){
    string = "";
    while(string.length < times && times > 0 ){
        string += chars[Math.floor(Math.random() * chars.length)];
    }
    array.push(string);
    }
    console.log(array);
    return array;
}

rand(5);