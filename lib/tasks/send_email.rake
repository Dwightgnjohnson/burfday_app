namespace :burfdays do

  desc "send email"
  task :emails => :environment do
    puts "run me with rake burfdays:emails  "
    puts "Inside here, I'll get all unsent emails"
    # UserEmail.unsent.ready.each do |email|
    #   BurfdayEmail.user_email(email).deliver
    #   email.update sent: true
    # end
  end
end
