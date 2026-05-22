import "@hotwired/turbo-rails"
import "controllers"

import jQuery from "jquery"
window.jQuery = jQuery
window.$ = jQuery

import "select2"
import moment from "moment"
window.moment = moment

console.log("IAMA Application loaded with Importmaps!")

// Controle do Sidebar (Menu Lateral) compatível com Turbo e Locastyle 3
$(document).on('click', '.ls-show-sidebar', function (e) {
  e.preventDefault();
  e.stopPropagation();
  $('html').toggleClass('ls-sidebar-visible');
});

$(document).on('click', 'main.ls-main, .ls-topbar', function () {
  if ($('html').hasClass('ls-sidebar-visible')) {
    $('html').removeClass('ls-sidebar-visible');
  }
});

$(document).on('click', '.ls-go-prev', function (e) {
  e.preventDefault();
  $('html').removeClass('ls-sidebar-visible');
});


