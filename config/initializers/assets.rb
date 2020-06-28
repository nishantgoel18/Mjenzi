# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( apland/new_design.css )
Rails.application.config.assets.precompile += %w( apland/new_design.js )

# Rails.application.config.assets.precompile += %w( style.css jqueryn.min.js popper.min.js bootstrapn.min.js owl.carousel.min.js waypoints.min.js jquery.easing.min.js default/classy-nav.min.js default/sticky.js default/mail.js default/scrollup.min.js default/one-page-nav.js jarallax.min.js jarallax-video.min.js jquery.counterup.min.js jquery.countdown.min.js jquery.magnific-popup.min.js wow.min.js default/active.js )

Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")