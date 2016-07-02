class ProductsController < ApplicationController
  def index
  	@products = Product.all
    # @products = Product.paginate(:page => params[:page], :per_page => 10)
  end
  
  def show
    @product = Product.find(params[:id])
  end

def create
  	@product = Product.new(params[:id])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def import

  end


end
