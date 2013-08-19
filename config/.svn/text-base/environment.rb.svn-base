# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AppForDevise::Application.initialize!


ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
  :address              => "mail.edge-centre.com",
  :port                 => 7557,
  :domain               => "edge-centre.com",
  :user_name            => "support@edge-centre.com",
  :password             => "Support!23",
  :authentication       => "plain",
  :openssl_verify_mode  => 'none',
  :enable_starttls_auto => true
}
