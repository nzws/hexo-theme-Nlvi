$(document).ready(function() {
  $('.container-inner').show();
});

InstantClick.on('change', () => {
  document.body.addEventListener('touchstart', function () {});
  var app = new Nlvi(nlviconfig);
  app.bootstarp();
});
