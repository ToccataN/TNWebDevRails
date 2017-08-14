<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
>>>>>>> 298a96f0d267def2f54e511cba512c9b7ece3eaa

require 'bundler/setup' # Set up gems listed in the Gemfile.
