// sidebar_toggle.js
// Corrige o botao de abrir/recolher o menu lateral (sidebar) apos migracao Rails 7.
// O Locastyle usa a classe 'ls-sidebar-open' no <body> para controlar a visibilidade.
// Este script garante o funcionamento independentemente do modulo JS do Locastyle.

$(document).ready(function () {

  // Seleciona o botao do menu (ls-show-sidebar)
  var $toggleBtn = $('.ls-show-sidebar');
  var $body = $('body');
  var $sidebar = $('.ls-sidebar');

  // Toggle ao clicar no botao do menu no topbar
  $toggleBtn.on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();
    $body.toggleClass('ls-sidebar-open');
  });

  // Fecha o sidebar ao clicar fora dele (no conteudo principal)
  $('main.ls-main, .ls-topbar').on('click', function () {
    if ($body.hasClass('ls-sidebar-open')) {
      $body.removeClass('ls-sidebar-open');
    }
  });

  // Garante que clicar dentro do sidebar nao fecha ele
  $sidebar.on('click', function (e) {
    e.stopPropagation();
  });

  // Suporte ao botao de fechar dentro do sidebar (ls-go-prev), se existir
  $('.ls-go-prev').on('click', function (e) {
    e.preventDefault();
    $body.removeClass('ls-sidebar-open');
  });

});
