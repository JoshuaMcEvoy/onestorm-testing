class ProductsPage
  include PageObject
  include DataMagic

  button(:next, :value => 'Next')
  div(:selected, :class => "Product Selected")
  paragraphs(:basic, :class => 'Basic')
  paragraphs(:economy, :class => 'Economy')
  paragraphs(:extra, :class => 'Extra')


  def click_next
    next_element.focus
    next_element.click
  end

  def change_premium
    if selected_element.paragraph(:class => 'Name').text == "Basic"
      economy_element.click
    elsif selected_element.text == "Economy"
      extra_element.click
    else
      basic_element.click
    end
  end

end