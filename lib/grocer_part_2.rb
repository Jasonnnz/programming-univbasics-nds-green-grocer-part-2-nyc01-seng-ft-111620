require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    coupon.each do |key,val|
      name = coupon[:item]
      amount = coupon[:num]
      cost_per = coupon[:cost]/amount
      cart.each do |grocery|
        if grocery["#{name} W/COUPON"] && grocery["#{name} W/COUPON"][:count] >= coupon[:num]
          grocery["#{name} W/COUPON"][:count] += 1 
        else 
          grocery["#{name} W/COUPON"] = {:price => cost_per, :clearance => grocery[:clearance], :count => amount}
        end
      cart[name][:count] -= amount  
    end
    end
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
