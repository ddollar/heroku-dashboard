require "heroku/command/base"

class Heroku::Command::Dashboard < Heroku::Command::Base

  # dashboard
  #
  # opens the heroku dashboard for an app
  #
  def index
    require "launchy"

    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}")
    else
      Launchy.open("https://dashboard.heroku.com")
    end
  end

  # dashboard:activity
  #
  # opens the activity dashboard for an app
  #
  def activity
    require "launchy"

    if app = optional_app
      Launchy.open("https://dashboard.heroku.com/apps/#{app}/activity")
    else
      Launchy.open("https://dashboard.heroku.com/activity") # doesn't work yet, but hey
    end
  end

private

  def optional_app
    app rescue nil
  end

end
