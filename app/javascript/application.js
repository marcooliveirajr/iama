import "@hotwired/turbo-rails"
import "controllers"

import jQuery from "jquery"
window.jQuery = jQuery
window.$ = jQuery

import "select2"
import moment from "moment"
window.moment = moment

console.log("IAMA Application loaded with Importmaps!")

// Controle do Sidebar (Menu Lateral) compatível com Turbo
$(document).on('click', '.ls-show-sidebar', function (e) {
  e.preventDefault();
  e.stopPropagation();
  $('body').toggleClass('ls-sidebar-open');
});

$(document).on('click', 'main.ls-main, .ls-topbar', function () {
  if ($('body').hasClass('ls-sidebar-open')) {
    $('body').removeClass('ls-sidebar-open');
  }
});

$(document).on('click', '.ls-go-prev', function (e) {
  e.preventDefault();
  $('body').removeClass('ls-sidebar-open');
});

