require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  count = 0
  collection.each do |key, value|
    if key[:item] == name
      return key
    end
    if !key.has_value?(name)
      count +=1 
    end
    if count == collection.length
      return nil
    end
  end
  
  # Consult README for inputs and outputs

end

def consolidate_cart(cart)
  consolidated_cart = []
  #binding.pry
  cart.each do |key, value|
    consolidated_cart << key
  end
  
  binding.pry
  consolidated_cart.each do |key, value|
    if find_item_by_name_in_collection(key[:item], cart) == nil
      key[:count] = 1
    end
    if key[:count]  0
      key[:count] += 1
    end
    #binding.pry
  end
  

end


  