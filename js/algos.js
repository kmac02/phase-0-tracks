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
  var orderedArray = (array.sort(compareWords));
  // return the last (aka longest) string in the new array.
  return (orderedArray.pop());

} //end find long word function

//-----------------------------------------------

function comparePairs(kvPair1, kvPair2) {
// turn the keys of each pair into an array
// turn the values of each pair into an array

// compare each array for equality

  var theKeys = {kvPair1, kvPair2};
  var keyArray = Object.keys(theKeys);
  function compareKeys(oneKey, otherKey) {
    for (var i = 0; i < keyArray.length; i++) {
      if (oneKey == otherKey) {
        return true;
      }
      else if (oneKey != otherKey) {
        return false;
      }
    }// end loop

  }// end compareKeys function

  // var theValues = {kvPair1, kvPair2};
  // var valueArray = Object.values(theValues);
  //   function compareValues(oneValue, otherValue) {
  //     for (var i = 0; i < keyArray.length; i++) {
  //       if (oneValue === otherValue) {
  //         return true;
  //       }
  //       else if (oneValue != otherValue) {
  //         return false;
  //       }
  //     }// end loop

  // }// end compareValues function

  // determine if the return value for either the keys function or the values function is true.
  function checkComparisons() {
    var result = ''
    if (compareValues === true || compareKeys === true) {
      result = true;
    }
    else if (compareValues !== true || compareKeys !== true) {
      result = false;
    }
    return result
  }

 } // end compare pairs function

 // ---------------------------------------------------
// Generate random test data
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

function makeArray(integer) {
  // create empty array
  randomWords = []
  alphabetArray = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  for (var i = 0; i < integer; i++) {
    var randomNumber = Math.floor(Math.random() * 100) + 1; // turn #'s into letters?
    var numberArray = randomNumber.toString.split("");
    for (var a = 0; a < randomNumber; a++) {
      newWord = ""
      //match index of random numbers to index of letters in alphabet array
      numberArray[a] = alphabetArray[a]


    }
    //feed into the randomWords array
    randomWords.push(//thenewword)
  } // end of loop
  return randomWords
} // end makeArray function





// DRIVER CODE- for compareWords
// verify words are in order
//console.log(testArray.sort(compareWords));
// print the last (aka longest) string in the array.
//console.log(testArray.pop())

console.log(findLongWord(testArray));
console.log(findLongWord(titles));



console.log(comparePairs({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

console.log(makeArray(3));
