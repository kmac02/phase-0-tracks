// create function called 'reverse'
// take word as argument
// create an empty string variable
// start a loop to iterate through each letter in the word.
// for each letter, take the word length and subtract one for the loop variable.
// while the loop variable is greater than zero, subtract one from the variable to loop backwards.
// As it loops backwards, add each letter to the empty string.

// print the new string
// return the new string ** this is important! else the return is undefined and the function + argument can't be stored as a new variable.


function reverse(word) {
  var str = '';
  for (var x = word.length - 1; x >= 0; x--)
    var shoeOrnament = str += word[x];
  console.log(str);
  return str
}


var shoeThing = (reverse("buckles"));
console.log("I have all these " + shoeThing + " so now what?");

if ( 8 == 2*4 ) {
  console.log("seriously, who on earth needs this many " + shoeThing + "?")
}
else {
  console.log("sorry, someone bought them")
}
