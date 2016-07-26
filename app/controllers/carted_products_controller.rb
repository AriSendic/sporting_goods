class CartedProductsController < ApplicationController
  def create
    product = CartedProduct.new(
      user_id: params['user_id'],
      product_id: params['product_id'],
      quantity: params['quantity'],
      status: params['status']
    )
    product.save
    flash[:success] = "successfully added to cart"
    redirect_to "/cart"
  end
  def index
    @products = CartedProduct.where(status: "carted", user_id: current_user.id)
    # carted_products of the current user and only show carted_products with the status of “carted”
    render 'index.html.erb'
  end  
end
