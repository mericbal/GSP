# Preview all emails at http://localhost:3000/rails/mailers/monthly_mailer
class MonthlyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/monthly_mailer/new_monthly
  def new_monthly
    MonthlyMailer.new_monthly
  end

end
