require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    name = coupon[:item] 
    cost_per = coupon[:cost]/coupon[:num]
    cart.each do |item|
      if item[:item] == name && item[:count] >= coupon[:num]
        cart << {:item => "#{name} W/COUPON", :price => cost_per, :clearance => item[:clearance], :count => coupon[:num]}
        item[:count] -= coupon[:num]
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item|
    if item[:clearance] 
      item[:price] -= (item[:price] * 0.20)
    end
  end
  cart      
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
  con_cart = consolidate_cart(cart)
  apply_coupons(con_cart)
  apply_clearance(con_cart)
  grand_total = 0 
  con_cart.each do |item|
    grand_total += (item[:price] * item[:count])
  end
  if grand_total >= 100
    grand_total -= (grand_total * 0.1) 
  end
  con_cart
end