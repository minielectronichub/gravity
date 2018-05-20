ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :domain =>"gamail.com",
    :user_name => "sanjaypinnaka@gmail.com",
    :password => "sanjaySAI1234",
    :authentication => "plain",
    :enable_starttls_auto => true
}