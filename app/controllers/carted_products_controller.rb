class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params['product_id'],
      quantity: params['quantity'],
      status: 'carted'
    )
    product.save
    flash[:success] = "successfully added to cart"
    redirect_to "/cart"
  end
  
  def index
    @products = CartedProduct.where(status: "carted", user_id: current_user.id)
    render 'index.html.erb'
  end  
  
  def destroy
    cp = CartedProduct.find_by(id: params['id'])
    cp.update(status: "removed")
    flash[:success] = "Product successfuly removed"
    redirect_to "/cart"
  end

end
