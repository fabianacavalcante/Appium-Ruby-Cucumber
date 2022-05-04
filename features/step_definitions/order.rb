  Given('I have the General Store screen') do
    @order = OrderScreen.new
    @order.display_store_screen
  end

  When('I complete the user information') do
    @order.scroll_country
    @order.insert_name
    @order.select_gender
  end
  
  Then('I should have the Products screen') do
    @order.btn_lets_shop
  end
  
  Given('I have the Products screen') do
    @order = OrderScreen.new
    @order.scroll_country
    @order.insert_name
    @order.select_gender
    @order.btn_lets_shop
  end
  
  When('I select products') do
    @order.scroll_product
  end
  
  When('add to cart') do
    @order.add_cart
  end
  
  Then('I should have the product in the Cart screen') do
    @order.display_cart_screen
  end
  
  Given('I have a select a product') do
    @order = OrderScreen.new
    @order.scroll_country
    @order.insert_name
    @order.select_gender
    @order.btn_lets_shop
  end
  
  Given('add to a cart') do
    @order.scroll_product
    @order.add_cart
  end
  
  When('I access the Cart screen') do
    @order.display_cart_screen
  end

  Then('I should have the {string} total amount') do |string|
    actual = find_element(id: 'totalAmountLbl').text
    puts (actual) 

    if actual != string
       fail ("Expected is #{string}, result is #{actual} ")
    end
  end


