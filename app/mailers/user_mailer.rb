class UserMailer < ActionMailer::Base
  default from: 'rememberthose@burfdays.com'

  def new_burfday(user)
    @user = user
    mail(to: @user.email,
    subject: 'A NEW #BURFDAY WAS JUST CREATED') do |format|
      format.text { render text: 'YAY! A NEW #BURFDAY' }
    end
  end
end
