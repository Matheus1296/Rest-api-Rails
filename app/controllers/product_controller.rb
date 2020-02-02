class ProductController < ApplicationController

  def index
    products = Product.all()
    render json: products
  end

  def create
    product = Product.create(params[:product].permit!)
    render json: product
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(params[:product].permit!)
    render json: product
  end

  def destroy
    Product.destroy_by(id: params[:id])
    render status: 200
  end

end
