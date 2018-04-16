class CheckPolicyPage
  include PageObject
  include DataMagic

  page_url FigNewton.baseurl


  inputs(:inputs, :xpath => "//input")
  buttons(:buttons , :class => 'Button')
  divs( :sliders, :xpath => "//div[@class='Fluid']//div[@class='Float']")
  divs( :icons, :xpath => "//div[@class='Fluid Locked']//div[@class='Icon']")


  def fill_out
    populate_page_with data_for :customer_page
  end


  def unlock_sliders
    icons_elements[0].click
    sleep 3
    icons_elements[0].click
    sleep 3
    icons_elements[0].click
  end

  def slide_by(slider, distance)

    sleep 2
    sliders_elements[index_for_slider(slider)].drag_and_drop_by distance, 0
  end

  def scroll
    @browser.send_keys :page_down
  end

  def button(text)
    buttons_elements[index_for_button(text)].click
  end

  private

  def index_for_slider(slider)
    sliders_elements.find_index{ |element| element.id == slider }
  end

  def index_for_button(text)
    buttons_elements.find_index{ |button| button.text == text }
  end

end