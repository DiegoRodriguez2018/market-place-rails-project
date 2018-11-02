class ProductsController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit, :update]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @categories = Category.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @listed_products = Product.where(user:current_user)
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.category = Category.find(params[:category].to_i)
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to new_product_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to new_product_path, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to new_product_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_select_options
     #Select options for generating the select tag in new and edit views. 
     @select_options = []
     Category.all.each_with_index do |category, index| 
       @select_options.push([category.name,index+1]) 
     end 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      result = params.require(:product).permit(:title, :price, :description, :image, :category)
      # note result is a hash
      result[:price] = result[:price].to_f * 100.0
      return result
    
    end
end
