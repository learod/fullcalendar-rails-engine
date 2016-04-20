module FullcalendarEngine
  class Engine < ::Rails::Engine
    isolate_namespace FullcalendarEngine

    config.to_prepare do
      # prepare for app to decorate our models and controllers
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
      # make sure our assets are added to the asset pipeline, per https://gist.github.com/parndt/11381872
      Rails.application.config.assets.precompile += %w(
        fullcalendar_engine/*
      )
    end

  end
end
