# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts", "images")
Rails.application.config.assets.precompile += %w(
												home.js 
												angular/angular.min.js 
												home/index.js
												bootstrap.js
												plugin/isotope.js
												plugin/main.js
												plugin/main.css
												plugin/prettyPhoto.js
												plugin/prettyPhoto.css
												plugin/animate.css
												plugin/blog_comments.css
												plugin/wow.js 
												admin.css 
												admin.js  
												plugin/wysihtml5.css 
												plugin/wysihtml5.js 
												)
