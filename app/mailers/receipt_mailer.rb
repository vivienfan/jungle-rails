class ReceiptMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def receipt_email(order, url)
    @order = order
    @items = LineItem.where order_id: @order.id
    @items.each do |item|
      item.product = Product.find_by id: item.product_id
    end
    @url = url
    mail(to: @order.email, subject: 'Jungle Order Receipt')
  end
end
