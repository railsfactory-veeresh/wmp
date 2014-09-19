class Request < ActionMailer::Base
  default from: "'veeresh2104@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request.sent.subject 
  def sent(tell_friend)
	@tell_friend= tell_friend
	mail to: @tell_friend.friend_email, subject: 'Invitation to Minetoo'
  end

end
