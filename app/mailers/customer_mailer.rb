class CustomerMailer < ApplicationMailer
  def welcome_email
    @customer = params[:customer]
    mail(to: @customer.email_address, subject: "Bienvenido!")
  end

  def rental_accepted
    @rental = params[:rental]
    mail(to: @rental.owner.email_address, subject: "Reserva aceptada")
  end
end
