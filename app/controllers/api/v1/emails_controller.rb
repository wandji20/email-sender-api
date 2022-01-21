class Api::V1::EmailsController < ApplicationController
  def portfolio
    if valid_attributes?
      send_email
      render json: { message: 'Email Sent' }, status: :ok
    else
      render json: { message: 'Kindly fill all Required Fields' }, status: :unprocessable_entity
    end
  end

  private

  def email_params
    params.require(:sender).permit(:name, :email, :website, :message)
  end

  def send_email
    PortfolioMailer.contact_email(email_params).deliver_later if valid_attributes?
  end

  def valid_attributes?
    email_params[:email] && email_params[:message]
  end
end
