class CartedProductsController < ApplicationController
  def create
    product = Carted_Product.new(
      user_id: params['user_id'],
      product_id: params['product_id'],
      quantity: params['quantity'],
      status: params['status']
    )
    product.save
    flash[:success] = "successfully added to cart"
    redirect_to "/products/#{product.id}"
  end
  def index
    @products
end
