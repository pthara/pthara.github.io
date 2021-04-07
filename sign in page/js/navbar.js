$( document ).ready(function() {
  var prevScrollpos = window.pageYOffset;
  window.onscroll = function() {
    
    console.log("working")
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
      document.getElementById("navbar").style.top = "0";
    } else {
      console.log(1)
      document.getElementById("navbar").style.top = "-90px";
    }
    prevScrollpos = currentScrollPos;
  }
});


