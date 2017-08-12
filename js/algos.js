// Create test array of strings
var testArray = ["long phrase","longest phrase","longer phrase"]
//Organize the strings by length

function findLongWord (array) {

function compareWords(oneWord, anotherWord) {
  // if one word is longer than another word, send it to the back
  if (oneWord.length < anotherWord.length)
    return -1;
  // if one word is shorter than another word, send it to the front
  else if (oneWord.length > anotherWord.length)
    return 1;
  // otherwise leave it where it is.
  return 0;

 } // end compare

} //end long word function
// verify words are in order
//console.log(testArray.sort(compareWords));
// print the last (aka longest) string in the array.
console.log(testArray.pop())


