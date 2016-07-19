class ImagesController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    x = Image.new(
      url: params['url'],
      product_id: params['product_id']
    )
    x.save
    flash[:success] = "Image successfully added"
    redirect_to "/products/#{x.product_id}"
  end  
end