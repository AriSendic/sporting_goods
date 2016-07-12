class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    product = Product.new(
      description: params['description'],
      name: params['name'],
      price: params['price'],
      image: params['image']
    )
    product.save
    render 'create.html.erb'
  end

  def show
    @product = Product.find_by(id: params['id'])
    render 'show.html.erb'
  end
  
  def edit
    @product = Product.find_by(id: params['id'])
    # coming from url
    render 'edit.html.erb'
  end 
  
  def update
    @product = Product.find_by(id: params['id'])
    @product.update(
      description: params['description'],
      name: params['name'],
      price: params['price'],
      image: params['image']
    )
    render 'update.html.erb'
  end  
  
  def destroy
    @product = Product.find_by(id: params['id'])
    @product.destroy
    render 'destroy.html.erb'
  end

  
end