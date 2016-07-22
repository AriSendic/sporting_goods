class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    total_price = product.price * params[:quantity].to_i
    total_tax = product.tax * params[:quantity].to_i
    order = Order.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      subtotal: total_price,
      tax: total_tax,
      total: total_price + total_tax
    ) 
    order.save
    flash[:success] = 'Order submitted'
    redirect_to "/orders/#{order.id}"
  end
   
  def show
    @order = Order.find_by(id: params['id'])
    # render 'show.html.erb' works automatically because of its name
  end
end
