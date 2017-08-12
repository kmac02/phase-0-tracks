// Create test array of strings
var testArray = ["long phrase","longest phrase","longer phrase"]
var titles = ["Video Watchdog", "Shock Value", "Art and Physics", "Bubblegum", "Blues People"]
//Organize the strings by length

function findLongWord (array) {
  // establish array variable inside function
  this.array = array
  // create function to compare words
  function compareWords(oneWord, anotherWord) {
    // if one word is longer than another word, send it to the back
    if (oneWord.length < anotherWord.length)
      return -1;
    // if one word is shorter than another word, send it to the front
    else if (oneWord.length > anotherWord.length)
      return 1;
    // otherwise leave it where it is.
    return 0;
  } // end compare words function
  // create a new array of the sorted array
  var orderedArray = (array.sort(compareWords))
  // print the last (aka longest) string in the new array.
  console.log(orderedArray.pop())

} //end long word function
// DRIVER CODE- for compareWords
// verify words are in order
//console.log(testArray.sort(compareWords));
// print the last (aka longest) string in the array.
//console.log(testArray.pop())

findLongWord(testArray)
findLongWord(titles)




