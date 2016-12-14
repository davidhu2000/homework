// Phase 1: Callbacks

function titlize(names, callBack) {
  let title = names.map(name => `Mx. ${name} Jingleheimer Schmidt`)
  callBack(title)
}

// titlize(['Mary', 'Brian', 'Leo'], names => {
//   names.forEach(name => console.log(name));
// });

// Phase 2: Constructors, Protoyptes, and this

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks
}

Elephant.prototype.trumpet = function() {
  console.log(`${name} this elephant goes 'phrRRRRRRRR!!!!!!'`)
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.trick.push(trick);
};

Elephant.prototype.play = function() {
  idx = Math.floor(Math.random() * this.tricks.length);
  console.log(this.tricks[idx]);
}

// Phase 3: Function Invocation

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
};

// ellie.play();
charlie.grow;
console.log(charlie.height);

// Phase 4: Closures

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function(food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`
  }
}
