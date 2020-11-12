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
      if cart["#{name} W/COUPON"] && cart["#{name} W/COUPON"][:count] >= coupon[:num]
          cart["#{name} W/COUPON"][:count] += 1 
      else 
        cart["#{name} W/COUPON"] = {:price => cost_per, :clearance => cart[name][:clearance], :count => 1}
      end
    cart[name][:count] -= amount  
    end
  end
  cart
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
