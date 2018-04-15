class InsurancePage
  include PageObject
  include DataMagic

  checkboxes(:agreed, :class => 'checkmark' )
  # text_field(:calendar, :name => 'startDate')

  def checkbox_click
    checkbox_elements[0].click
  end

  # def fill_out
  #   populate_page_with data_for :insurance_page
  # end
end