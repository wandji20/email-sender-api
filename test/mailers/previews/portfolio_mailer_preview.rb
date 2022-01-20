# Preview all emails at http://localhost:3000/rails/mailers/portfolio_mailer
class PortfolioMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/portfolio_mailer/contact_email
  def contact_email
    sender_info = {
      "name": "sender name", 
      "email": "sender@email",
      "message": "Some content", 
      "website": "some website" 
    }
    receiver_info = {
      "name": "receiver name", 
      "email": "receiver@email"
    }
    PortfolioMailer.contact_email(sender_info, receiver_info)
  end

end
