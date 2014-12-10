namespace :burfday_reminder do

  desc "#BURFDAY reminder 1 week away"
    task :one_week_email => :environment do
      User.all.each do |user|
        BurfdayMailer.burfday_reminder(user).deliver!
        puts "success!"
      end
    end

    # desc "send email"
    # task :emails => :environment do
    #   # UserEmail.unsent.ready.each do |email|
    #   #   BurfdayEmail.user_email(email).deliver
    #   #   email.update sent: true
    #   # end
    # end

end
