class ProductsController < ApplicationController
  def items
    @products = Product.all
    render 'items.html.erb'
  end
  
  def bat
    @bat = Product.last
    render 'bat.html.erb'
  end
  
  def glove
    @glove = Product.find(2)
    render 'glove.html.erb'
  end

  def racket
    @racket= Product.first
    render 'racket.html.erb'
  end

end