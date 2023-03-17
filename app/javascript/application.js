// Entry point for the build script in your package.json
//= require jquery
//= require jquery_ujs
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import "events"
//= require likes


// Show alert for 2 seconds and then hide it
window.setTimeout(function() {
  $(".alert").fadeTo(500, 0).slideUp(500, function(){
    $(this).remove();
  });
}, 2000);
