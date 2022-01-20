# Preview all emails at http://localhost:3000/rails/mailers/portfolio_mailer
class PortfolioMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/portfolio_mailer/contact_email
  def contact_email
    sender = {
      "name": "sender name", 
      "email": "sender@email",
      "message": "Some content", 
      "website": "some website" 
    }
 
    PortfolioMailer.contact_email(sender)
  end

end
