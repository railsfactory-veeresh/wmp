# Preview all emails at http://localhost:3000/rails/mailers/request
class RequestPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request/sent
  def sent
    Request.sent
  end

end
