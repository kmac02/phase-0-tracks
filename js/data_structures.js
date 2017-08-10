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

var newCar = new Car("Hyundai", "Accent", 1976, "purple");
console.log(newCar)

newCar.vroom();
newCar.salesPitch();