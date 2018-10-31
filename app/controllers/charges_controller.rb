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
        :amount      => @product.price,
        :description => @product.title,
        :currency    => 'AUD'
      )
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

end
