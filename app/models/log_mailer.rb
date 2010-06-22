class LogMailer < ActionMailer::Base
  def new_message_notification(user, log)
    setup_email(user, log)
  end

  protected
  def setup_email(user, log)
    recipients "#{user.email}"
    from      %("#{user.fullname}" <masa.ash@gmail.com>)
    subject    "[ashhill.ca] #{log.title}"
    body       :body => log.body, :current_user => log.user_id, :title => log.title
    content_type "text/html"
    sent_on    Time.now
  end
  
end