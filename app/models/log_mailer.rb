class LogMailer < ActionMailer::Base
  def signup_notification
    recipients "Ashley Hill <masa.ash@gmail.com>"
    from       "My Forum "
    subject    "Please activate your new account"
    sent_on    Time.now
    body       {}
  end
end
