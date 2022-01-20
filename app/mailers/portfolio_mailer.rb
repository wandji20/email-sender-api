class PortfolioMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.portfolio_mailer.contact_email.subject
  #
  def contact_email(sender_info, receiver_info)
    @receiver_name = receiver_info[:name]
    @receiver_email = receiver_info[:email]
    @sender_name = sender_info[:name]
    @sender_url = sender_info[:website]
    @sender_message = sender_info[:message]
    @sender_email = sender_info[:email]
    mail(to: @receiver_email)
  end
end
