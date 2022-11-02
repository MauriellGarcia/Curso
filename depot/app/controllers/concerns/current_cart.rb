module CurrentCart
   private 

   def set_cart
       begin
          @cart = Cart.find(session[:cart_id])
       rescue ActiveRecord::RecordNotFound
          @cart = Cart.create
          ssesion [:cart_id] = @cart.id
       end

    end
        
end
