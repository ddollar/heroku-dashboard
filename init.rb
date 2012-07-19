require "heroku/command/base"
require "launchy"

class Heroku::Command::Dashboard < Heroku::Command::Base

  # dashboard
  #
  # opens the heroku dashboard for an app
  #
  def index
    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}")
    else
      Launchy.open("https://dashboard.heroku.com")
    end
  end

  # dashboard:history
  #
  # opens the history dashboard for an app
  #
  def history
    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/history")
    else
      Launchy.open("https://dashboard.heroku.com/history")
    end
  end

private

  def optional_app
    app rescue nil
  end

end
