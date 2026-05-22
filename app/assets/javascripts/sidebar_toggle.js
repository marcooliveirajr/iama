// sidebar_toggle.js
// Corrige o botao de abrir/recolher o menu lateral (sidebar) apos migracao Rails 7.
// O Locastyle usa a classe 'ls-sidebar-visible' no <html> para controlar a visibilidade.

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

