class ImagesController < ApplicationController
  def new
    @product = Product.find_by(id: params[:product_id])
    render 'new.html.erb'
  end

  def create
    x = Image.new(
      url: params['url'],
      product_id: params['product_id']
    )
    x.save
    flash[:success] = "Image successfully added"
    redirect_to "/products/#{params[:product_id]}"
  end  
end