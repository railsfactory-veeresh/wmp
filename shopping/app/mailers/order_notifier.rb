class OrderNotifier < ActionMailer::Base
  default from: "'veeresh2104@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(line_items,current_user)
@line_item= current_user.line_items.where(:status => 0)
mail to: current_user.email, subject: 'Book My Cart'
end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
