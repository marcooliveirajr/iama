// iama_handlers.js
// Handlers permanentes de UI — carregado UMA VEZ via Sprockets (legacy_application.js).
// Com Turbo, o script inline no <body> é re-executado a cada navegação, acumulando
// listeners duplicados. Aqui, o addEventListener é adicionado apenas uma vez e persiste.

// =========================================================================
// GERENCIADOR DE ABAS (ls-tabs-nav)
// =========================================================================
document.addEventListener('click', function (e) {
  var link = e.target.closest('.ls-tabs-nav a[href^="#"]');
  if (!link) return;

  e.preventDefault();
  var targetId  = link.getAttribute('href').replace('#', '');
  var nav       = link.closest('.ls-tabs-nav');
  var container = nav.closest('fieldset') || nav.parentNode;

  nav.querySelectorAll('a').forEach(function (a) {
    a.parentElement.classList.remove('ls-active');
  });
  link.parentElement.classList.add('ls-active');

  container.querySelectorAll('.ls-tab-content').forEach(function (panel) {
    panel.classList.remove('ls-active');
  });
  var target = document.getElementById(targetId);
  if (target) { target.classList.add('ls-active'); }
});

// =========================================================================
// COLLAPSE / EXPAND (data-ls-module="collapse")
// Replica o comportamento do Locastyle apenas alternando a classe
// 'ls-collapse-opened' — o CSS cuida do show/hide.
// =========================================================================
document.addEventListener('click', function (e) {
  var header = e.target.closest('[data-ls-module="collapse"] .ls-collapse-header');
  if (!header) return;

  e.preventDefault();
  e.stopPropagation();

  var container = header.closest('[data-ls-module="collapse"]');
  var isOpen    = container.classList.contains('ls-collapse-opened');

  container.classList.toggle('ls-collapse-opened');
  header.setAttribute('aria-expanded', String(!isOpen));
});

// Impede que clicks no corpo do collapse propaguem e fechem acidentalmente
document.addEventListener('click', function (e) {
  if (e.target.closest('[data-ls-module="collapse"] .ls-collapse-body')) {
    e.stopPropagation();
  }
});
