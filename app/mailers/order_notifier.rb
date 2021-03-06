class OrderNotifier < ActionMailer::Base
  default from: "ruby <from@example.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
    attachments['image.jpeg'] = File.read('/home/sujitha/Desktop/sujitha/depot/public/image.jpeg')
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order
    
    mail to: order.email, subject: 'Pragmatic Store Order shipped'
  end
end
