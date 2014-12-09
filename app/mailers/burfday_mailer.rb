class BurfdayMailer < BaseMailer
  default from: "burfday@example.com"
  layout 'email'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.burfday_mailer.burfday_reminder.subject
  #
  def burfday_reminder(user)
    @user = user
    @greeting = "Hi, this is just a friendly reminder that there is a new birthday coming up!"

    mail(to: @user.email,
    subject: 'Upcoming #burfday')
  end
end
