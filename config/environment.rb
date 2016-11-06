# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings =  {
    :address =>'smtp.sendgrid.net',
    :port => '587',
    :authenitcation => :plain,
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SNEDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_startls_auto => true
  }
