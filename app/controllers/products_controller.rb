class ProductsController < ApplicationController
  def index 
    @products = Product.all
  end 
  def show 
    @product = Product.find_by(id: params[:id])
  end 
  def new
  end 
  def create 
    brand = params[:brand], 
    gender = params[:gender], 
    color = params[:color], 
    style = params[:style], 
    movement = params[:movement], 
    features = params[:features], 
    price = params[:price], 
    image = params[:image]
    product = Product.new({brand: brand , gender: gender, color: color, style: style, movement: movement, features: features, price: price, image: image})
    product.save
    flash[:success] = "Product Created"
    redirect_to "/products/#{product.id}"
  end 
  def edit 
    @product = Product.find_by(id: params[:id])
  end 
  def update 
    product = Product.find_by(id: params[:id])
    product.assign_attributes({
      brand: params[:brand], 
      gender: params[:gender], 
      color: params[:color], 
      style: params[:style], 
      movement: params[:movement], 
      features: params[:features], 
      price: params[:price], 
      image: params[:image]
      })
    product.save
    flash[:success] = "Product Updated"
    redirect_to "/products/#{product.id}"
  end 
  def destroy 
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:danger] = "Product destroyed"
    redirect_to "/products" 
  end 
end
