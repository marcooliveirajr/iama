require_relative "boot"

require "rails/all"

# Carrega variáveis do /etc/environment se existir (comum em servidores Passenger/Nginx)
if File.exist?('/etc/environment')
  File.readlines('/etc/environment').each do |line|
    line = line.strip
    next if line.empty? || line.start_with?('#')
    line = line.sub(/\Aexport\s+/, '')
    key, val = line.split('=', 2)
    if key && val
      val = val.gsub(/\A['"]|['"]\z/, '')
      ENV[key.strip] ||= val.strip
    end
  end
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Clinicaiama
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2
    
    # Compatibilidade com Rails 4: Associações belongs_to são opcionais por padrão
    config.active_record.belongs_to_required_by_default = false
    
    # Suporte para o objeto SECRETS usado nas views legadas
    config.before_initialize do
      config_file = Rails.root.join("config", "secrets.yml")
      if File.exist?(config_file)
        secrets = YAML.safe_load(ERB.new(File.read(config_file)).result, aliases: true)
        ::SECRETS = secrets[Rails.env] || secrets["default"]
      end
    end

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
