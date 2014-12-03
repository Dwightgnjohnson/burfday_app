class UserMailer < ActionMailer::Base

  default from: 'dwightgnjohnson@gmail.com'

  def welcome_email(user)
    @user = user
    @url = root_path
    mail(
         to: user.email,
         subject: 'Welcome to #BURFDAY'
         from: 'dwightgnjohnson@gmail.com'
       )
  end

  def new_burfday(user)
    @user = user
    mail (
      to: user.email,
      subject: 'New #Burfday Created!',
      text: "You've added a new birthday to your #BURFDAY"
    )

end
