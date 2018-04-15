class HousePage
  include PageObject
  include DataMagic

  button(:next , :value => 'Next')
  text_field(:street, :name => 'street')
  text_field(:suburb, :name => 'suburb')
  select_list(:state, :name => 'state')
  text_field(:postcode, :name => 'postcode')
  select_list(:property, :name => 'property')

  def fill_out
    populate_page_with data_for :house_page
  end
end