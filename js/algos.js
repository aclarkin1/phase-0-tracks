// Objective: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// Establish 2 arrays: phrases, and longest_phrase. longest_phrase should be blank
// For each item in the phrases array, determine the item's length
// Initiate a loop to print the length of each item in the array
// If the length of the item evaluated is longer than the item in longest_phrase, push the item into longest_phrase
  // And pull the existing item out of longest phrase




var phrases = ["Andy", "Andy Bloody Murray", "Andrew Murray", "Andy Reginald George Murray",  "Andy Murray"];
var longest_phrase = ["a"];


for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > longest_phrase[0].length) {
		longest_phrase.push(phrases[i]);
    	longest_phrase.splice(0,1);
    }
}
console.log(longest_phrase);

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

find_match({name: "Aaron", age: 28}, {name: "Sam", age: 31});