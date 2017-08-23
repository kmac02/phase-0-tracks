
var background = document.getElementsByTagName('body')[0];
background.style.backgroundColor = '#000000';



$(document).ready(function() {
  $( "div#snow" ).mouseover(function() {
    $( this).fadeOut("slow", function() {
      $( this).hide();
    })
  });
});

$(document).ready(function() {

    $( "section" ).click(function() {
    $( this).fadeIn("slow");
  });
});

// $(document).ready(function() {
//   if ( $ ("div#snow").is (":hidden") ) {
//     $( "section" ).hide();
//   } else {
//     $( "section" ).show( "slow" );
//   }

// });


// $( this ).mouseover(function() {
      // $( this ).fadeIn
// $(document).ready(function() {
//  $("div").fadeOut(500, function() {
//     $(this).attr("src", "fun_bars.gif");
//     $(this).load(function () {
//       $(this).fadeIn(500);
//     });
//   });
// });

// Sometimes it works, sometimes it doesn't. I don't give up but my time block is over.
