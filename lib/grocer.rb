def find_item_by_name_in_collection(name, collection)
  
  collection.each do |cosa|   # does a check for each 'cosa' (item)
    if cosa[:item] == name
        return cosa
    end
  end

  return nil

end


def consolidate_cart(cart)
  receipt = []

  cart.each do |cosa|
    alreadyscanned = false          #default unless the next check finds otherwise
    receipt.each do |thing|         #check each item on receipt to see if its already there
      if thing[:item]==cosa[:item]
        thing[:count] += 1
        alreadyscanned = true
      end
    end
    if !alreadyscanned              #add item to receipt and initialize its count to 1
      receipt.push(cosa)
      receipt[receipt.index(cosa)][:count] =1
    end
  end
 
  receipt
end


  