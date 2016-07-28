class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    products = CartedProduct.where(status: "carted", user_id: current_user.id)
    subtotal = 0
    tax = 0
    products.each do |carted|
      subtotal = subtotal + carted.product.price
      tax += carted.product.tax
    end
    
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: tax + subtotal
    )
    order.save
    session[:cart_count] = nil
    products.each do |carted|
      carted.status = "purchased"
      carted.order_id = order.id
      carted.save
    end

    
    flash[:success] = 'Order submitted'
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params['id'])
    # render 'show.html.erb' works automatically because of its name
  end
end
