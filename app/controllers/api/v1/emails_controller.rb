class Api::V1::EmailsController < ApplicationController
  def portfolio
    pp email_params
    render json:  { name: 'wwwwwww', email: 'user@email' }
  end

  private
  def email_params
    params.permit("sender_info", "receiver_info")
  end
end
