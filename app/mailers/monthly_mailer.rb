class MonthlyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.monthly_mailer.new_monthly.subject
  #
  def new_monthly
  	# @location = Location.find(params[:id])
    
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
