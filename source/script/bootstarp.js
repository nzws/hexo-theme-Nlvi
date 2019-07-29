$(document).ready(function() {
  $('.container-inner').show();
});

var init = () => {
  document.body.addEventListener('touchstart', function () {});
  var app = new Nlvi(nlviconfig);
  app.bootstarp();
};

InstantClick.on('change', init);
window.onload = init;
