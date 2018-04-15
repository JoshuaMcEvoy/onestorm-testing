class CustomerPage
  include PageObject
  include DataMagic

  button(:next , :value => 'Next')
  text_field(:first_name, :name => 'firstName')
  text_field(:family_name, :name => 'familyName')
  select_list(:day, :class => 'Day')
  select_list(:month, :class => 'Month')
  select_list(:year, :class => 'Year')
  text_field(:phone, :name => 'phone')
  text_field(:email, :name => 'email')
  link(:change_link, :xpath => "//div[@class='Premium']//a")

  def fill_out
    populate_page_with data_for :customer_page
  end

  def click_change
    link_element.click
  end
end