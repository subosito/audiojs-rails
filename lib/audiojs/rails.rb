require "audiojs/rails/version"

module Audiojs
  module Rails
    class Engine < ::Rails::Engine
      initializer 'audiojs.assets.precompile' do |app|
        app.config.assets.precompile += %w( audiojs-player-graphics.gif audiojs.swf )
      end
    end
  end
end
