# Fix: Jelastic Passenger nao repassa o Host header correto para o Rails.
# Isso faz o Rails redirecionar para https://127.0.0.1:3000/ apos o login.
# Este middleware forca o host correto antes do Rails processar a requisicao.

if Rails.env.production?
  class JelasticHostFixer
    PRODUCTION_HOST = 'www.clinicaiama.com.br'.freeze

    def initialize(app)
      @app = app
    end

    def call(env)
      env['HTTP_HOST']       = PRODUCTION_HOST
      env['SERVER_NAME']     = PRODUCTION_HOST
      env['SERVER_PORT']     = '443'
      env['HTTPS']           = 'on'
      env['rack.url_scheme'] = 'https'
      @app.call(env)
    end
  end

  Rails.application.config.middleware.insert_before(0, JelasticHostFixer)
end
