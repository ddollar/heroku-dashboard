require "heroku/command/base"
require "launchy"

class Heroku::Command::Dashboard < Heroku::Command::Base

  # dashboard
  #
  # opens the heroku dashboard for an app
  #
  def index
    specified_app = app rescue nil

    if specified_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}")
    else
      Launchy.open("https://dashboard.heroku.com")
    end
  end

end
