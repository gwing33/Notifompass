require "rubygems"
require 'compass'
require 'terminal-notifier'


module Notifompass

  LOADED = "Compass Growl Loaded"
  STYLESHEET_SAVED = "Stylesheet Saved"
  STYLESHEET_ERROR = "Stylesheet Error"
  SPRITE_SAVED = "Sprite Saved"

  def notify(type, message)
    TerminalNotifier.notify(message, :title => type)
  end

  def init
    Notifompass.notify(STYLESHEET_ERROR, "Compass Growl has been initialized")

    config = Compass.configuration

    config.on_stylesheet_saved do |filename|
      Notifompass.notify(STYLESHEET_SAVED, "Stylesheet: #{File.basename(filename)} saved")
    end

    config.on_sprite_saved do |filename|
      Notifompass.notify(SPRITE_SAVED, "Sprite: #{File.basename(filename)} saved")
    end

    config.on_stylesheet_error do |filename, error|
      Notifompass.notify(STYLESHEET_ERROR, "Stylesheet Error: #{File.basename(filename)} \n had the following error:\n #{error}")
    end

  end

  extend self

end

Notifompass.init