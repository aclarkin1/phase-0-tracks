var horses = ["Ed", "Nora", "Martha", "Tom"]
var colors = ["black", "blue", "red", "silver"]

horses.push("Ted")
colors.push("green")

//console.log(colors)
//console.log(horses)

var horse_obj = {}

//horse_obj.name = "Ed";

//console.log(horse_obj)

console.log(horses[0])

horse_obj.name = horses[0]
horse_obj.color = colors[0]

console.log(horse_obj)

//for(i=0; i < horses.length; i++){
//  horses[i] = colors[i];
//}

//Write a constructor function

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