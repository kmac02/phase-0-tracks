// function fadeImage(event) {
//   event.target.source = "blizzard.gif"
// }
var background = document.getElementsByTagName('body')[0];
background.style.backgroundColor = '#000000';



$(document).ready(function() {
  $( "div:first" ).click(function() {
    $( this).fadeTo( "slow", .33 );
  });
});