# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )

Rails.application.config.assets.precompile += %w( Navigation-with-Button1.css )

Rails.application.config.assets.precompile += %w( Navigation-with-Search1.css )

Rails.application.config.assets.precompile += %w( Footer-Clean.css )

Rails.application.config.assets.precompile += %w( Footer-Dark.css )

Rails.application.config.assets.precompile += %w( Footer-Dark-1.css )

Rails.application.config.assets.precompile += %w( Login-Form-Clean.css )

Rails.application.config.assets.precompile += %w( Login-Form-Clean-1.css )

Rails.application.config.assets.precompile += %w( Login-Form-Dark.css )

Rails.application.config.assets.precompile += %w( Registration-Form-with-Photo.css )

Rails.application.config.assets.precompile += %w( styles.css )

Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/

Rails.application.config.assets.precompile += %w( ionicons.css )
