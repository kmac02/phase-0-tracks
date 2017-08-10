var colors = [ "greenish", "reddish", "purplesque", "grey"];

var horseNames = ["Kit-Kat", "Brandy", "Peter Pan", "Snowball"];

colors.push("orange");

horseNames.push("Pepper");

var horse = {};
for (var i = 0; i < colors.length; i++) {
  horse[horseNames[i]] = colors[i];
  console.log(horse);
}

console.log("_______")

function Car(make, model, year, color) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;

  this.vroom = function() {console.log("VROOM!!");};
  this.salesPitch = function() {console.log("I have a " + this.make + " " + this.model + "!!\nIt's a " + (this.year+10) + "!\nOh wait, ya caught me! It's a " + this.year );};

}

Car.prototype.isawesome = true

var newCar = new Car("Hyundai", "Accent", 1976, "purple");
console.log(newCar)

newCar.vroom();
newCar.salesPitch();

for (var carSpecs in newCar) {
  if (typeof newCar[carSpecs] === "function") {
    console.log("This is a function.")
  }
  else if (typeof newCar[carSpecs] === "number") {
    console.log("This is a number.")
    }
  else if (typeof newCar[carSpecs] === "boolean") {
    console.log("It's a boolean.")
  }
  else {
  newCar[carSpecs] = "superawesome" +newCar[carSpecs];
  }
}



console.log(newCar);
newCar.vroom();
newCar.salesPitch();

console.log(newCar.isawesome);
