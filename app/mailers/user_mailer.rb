class UserMailer < ActionMailer::Base
  def new_burfday(user)
    @user = user
    mail(to: @user.email, subject: 'New #Burfday Created!')
  end
end
