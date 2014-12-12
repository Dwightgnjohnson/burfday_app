class BurfdayMailer < BaseMailer
  layout 'email'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.burfday_mailer.burfday_reminder.subject
  #
  def burfday_reminder(user)
    @user = user
    @burfdays = user.burfdays.all
    @greeting = "YOUR WEEKLY #BURFDAY UPDATE!"
    @tests =[]
    mail(to: @user.email,
    subject: 'Upcoming #burfday')
  end
end
