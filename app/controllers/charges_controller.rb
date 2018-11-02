class ChargesController < ApplicationController
    def new
    end
    
    def create
      @product = Product.find(params[:product_id])
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        #we modified amount and description correspondelly. 
        :amount      => @product.price*params[:quantity].to_i,
        :description => @product.title,
        :currency    => 'AUD'
      )

      #Order attributes:
    # t.bigint "user_id"
    # t.string "shipping_address"
    # t.bigint "product_id"
    # t.string "product_title"
    # t.string "product_price"
    # t.string "quantity"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.index ["product_id"], name: "index_orders_on_product_id"
    # t.index ["user_id"], name: "index_orders_on_user_id"
    @order = Order.new
    @order.user = current_user
    @order.product = @product
    @order.product_title = @product.title
    @order.product_price = @product.price
    @order.shipping_address = params[:shipping]
    @order.quantity = params[:quantity].to_i
    
    @order.save
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

end
