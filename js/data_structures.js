//var horses = ["Ed", "Nora", "Martha", "Tom"]
//var colors = ["black", "blue", "red", "silver"]

//horses.push("Ted")
//colors.push("green")

//console.log(colors)
//console.log(horses)

//horse_obj.name = "Ed";

//console.log(horse_obj)

//horse_obj.name = horses[0]
//horse_obj.color = colors[0]

var matchHorses = function() {
var horseObj = {};
var horses = ["Ed", "Nora", "Martha", "Tom"];
var colors = ["black", "blue", "red", "silver"];

for(i=0; i < horses.length; i++){
horseObj[horses[0]] = colors[0];

	return horseObj;
}
}


console.log(matchHorses())


//Write a constructor function for a car
// Initiate a variable (car) that is a set of key-value pairs
// Write a function that takes the key-value pairs as arguments
// Write an instance function that prints "vrooom" for each instance of the function

var car = {make: 'Toyota', 'capacity': 5, fitsHorse: false};

function Car(make, capacity, fitsHorse) {
	console.log("New car:", this);
	
	this.make = make;
	this.capacity = capacity;
	this.fitsHorse = fitsHorse;
	
	this.vroom = function() { console.log("Vrooom!");}
}

//Call a constructor function

console.log("Let's take a look at this car...")
var first_car = new Car("Ford", 20, true);
console.log(first_car.capacity)
console.log("This car can also go really fast...")
first_car.vroom()