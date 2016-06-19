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