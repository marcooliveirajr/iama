source 'https://rubygems.org'

ruby '>= 3.2', '< 5.0'

# === RAILS CORE ===
# Upgrade direto para Rails 7.2 (suportado com Ruby 3.x/4.x)
gem 'rails', '~> 7.2.0'
gem 'puma', '~> 6.0'

# === BANCO DE DADOS ===
# SQLite para desenvolvimento local
gem 'sqlite3', '~> 2.0'
# MySQL para produção
gem 'mysql2', '~> 0.5'

# === ASSETS / CSS (Rails 7 - Sprockets 4 ou Propshaft) ===
gem 'sprockets-rails'
gem 'sass-rails', '~> 6.0'
gem 'uglifier', '>= 4.0.0'
gem 'jbuilder'

# === IMPORT MAPS (Rails 7 — substitui Webpack/Webpacker) ===
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# === AUTH & AUTORIZAÇÃO ===
gem 'devise', '~> 4.9'         # 4.9 suporta Rails 7
gem 'cancancan', '~> 3.5'      # 3.x suporta Rails 7

# === PAGINAÇÃO ===
gem 'will_paginate', '~> 3.3'

# === UPLOAD DE ARQUIVOS ===
# Paperclip foi descontinuado — migrado para Active Storage (nativo no Rails 5.2+)
# A migração dos dados existentes exigirá um script separado.
# gem 'paperclip' -- REMOVIDO (deprecated e incompatível com Rails 7+)
gem 'active_storage_validations'

# === SELECT2 / DATEPICKER ===
# As versões antigas são incompatíveis com Rails 7.
# Gerenciadas agora via importmap ou npm dependendo do frontend.
# gem 'select2-rails'                          -- substituir via importmap
# gem 'bootstrap3-datetimepicker-rails'        -- substituir via importmap
# gem 'momentjs-rails'                         -- substituir via importmap

# === LOCALIZAÇÃO / BRASIL ===
gem 'carmen', '~> 1.1'
gem 'correios-cep', '~> 0.8'

# === UTILITÁRIOS ===
# iconv foi incorporada ao Ruby core — não é mais necessária como gem
# gem 'iconv' -- REMOVIDA

group :development, :test do
  gem 'pry'
  gem 'debug'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'spring'
  gem 'rack-mini-profiler'
  gem 'error_highlight', '>= 0.4.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:windows, :jruby]
gem 'bootsnap', require: false
