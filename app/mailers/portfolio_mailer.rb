class PortfolioMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.portfolio_mailer.contact_email.subject
  #
  def contact_email(params)
    
    @name = params[:name]
    @email = params[:email]
    @website = params[:website]
    @message = params[:message]
    mail(from: @email, to: ENV['APP_USERNAME'], subject: 'Contact Email')
  end
end
