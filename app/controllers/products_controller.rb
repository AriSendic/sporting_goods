class ProductsController < ApplicationController
  
  def index
    sort = params[:sort]
    order = params[:order]
    category = params[:category]
    if params[:search_terms]
      @products = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search_terms]}%", "%#{params[:search_terms]}%")
    elsif sort == "price"
      if order == nil
        @products = Product.order(:price)
      elsif order == "desc"
        @products = Product.order(price: :desc)
      end
    elsif sort == "discount"
      @products = Product.where("price < ?", 40)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else
      @products = Product.all
    end
    render 'index.html.erb'
  end
 #   if params[:sort_attribute] && params[:sort_order]
 #       @products = Product.order(params[:sort_attribute] => params[:sort_order])
 #     else
 #       @products = Product.all
 #     end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    product = Product.new(
      description: params['description'],
      name: params['name'],
      price: params['price']
    )
    product.save
    flash[:success] = "Product successfully added"
    redirect_to "/products/#{product.id}"
  end

  def show
    if params[:id] == 'random'
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params['id'])
    end
    render 'show.html.erb'
  end 
  
  def edit
    @product = Product.find_by(id: params['id'])
    render 'edit.html.erb'
  end 
  
  def update
    product = Product.find_by(id: params['id'])
    product.update(
      description: params['description'],
      name: params['name'],
      price: params['price']
    )
    flash[:success] = "Product successfully updated"
    redirect_to "/products/#{product.id}"
  end  
  
  def destroy
    @product = Product.find_by(id: params['id'])
    @product.destroy
    flash[:success] = "Product successfuly deleted"
    redirect_to "/products"
  end

  
end