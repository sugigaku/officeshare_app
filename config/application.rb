require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RoomshareApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.hosts << "7bf7139ee8af4864ab2fc359c406a232.vfs.cloud9.ap-northeast-1.amazonaws.com"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    #エラー文日本語化
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    #チャット画面の日時表示のために試験的に導入
    config.time_zone = 'Tokyo'

    config.assets.initialize_on_precompile = false

  end
end
