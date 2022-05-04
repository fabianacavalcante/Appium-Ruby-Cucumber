class OrderScreen
  def initialize
    @id_name = 'nameField'
    @btn_lets_shop = 'btnLetsShop'
    @btn_cart = 'appbar_btn_cart'
    @id_gender = 'radioFemale'
  end
  
  def display_store_screen
    find_element(:xpath, ".//android.widget.TextView[@text='General Store']").displayed?
  end

  def display_cart_screen
    find_element(:xpath, ".//android.widget.TextView[@text='Cart']").displayed?
  end

  def insert_name
    find_element(id: @id_name).send_keys('John John')
  end

  def scroll_country
    scroll_to('Brazil')
    find_element(:xpath, ".//android.widget.TextView[@text='Brazil']").click
  end

  def select_gender
    find_element(id: @id_gender).click
  end

  def btn_lets_shop
    find_element(id: @btn_lets_shop).click
  end

  def scroll_product
    scroll_to('Air Jordan 1 Mid SE')
    find_element(:xpath, ".//android.widget.TextView[@text='ADD TO CART']").click
    find_element(:xpath, ".//android.widget.TextView[@text='ADD TO CART']").click
  end

  def add_cart
    find_element(id: @btn_cart).click
  end
end