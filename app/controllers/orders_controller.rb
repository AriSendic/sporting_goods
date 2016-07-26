class OrdersController < ApplicationController
  
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
   
    products.each do |carted|
      carted.status = "purchased"
      carted.order_id = order.id
      carted.save
    end


    flash[:success] = 'Order submitted'
    redirect_to "/orders/#{order.id}"
  end
#    9) In the orders controller’s create action, you’ll do a number of things:
# i) Find all of the current user’s products that have a status of “carted”.
# ii) Use that data to create a new row in the orders table, and save the user_id, subtotal, tax, and total.
# iii) Modify all the rows from the carted_products table so that their status changes to “purchased” and that they are given the appropriate order_id.
  def show
    @order = Order.find_by(id: params['id'])
    # render 'show.html.erb' works automatically because of its name
  end
end
