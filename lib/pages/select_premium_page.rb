class SelectPremiumPage
  include PageObject
  include DataMagic

  page_url FigNewton.baseurl


  paragraphs(:name, :class => 'Name')
  paragraphs(:value, :class => 'Value')
  buttons(:next, class: 'Button')

  text_fields(:textFields, :xpath => "//input[@type='text']")
  text_fields(:numberFields, :xpath => "//input[@type='number']")
  text_fields(:emailFields, :xpath => "//input[@type='email']")
  text_fields(:passwordFields, :xpath => "//input[@type='password']")

  select_list(:birthday_day, :class => 'Day')

  def select_premium(name)
    name_elements[index_for_paragraph(name)].click
  end

  def click_button(name)
    next_elements[index_for_buttons(name)].click
  end

  def scroll_to_button(name)
    next_elements[index_for_buttons(name)].focus
  end

  def text_field(field, value)
    textFields_elements[index_for_text_field(field)].value = value
  end

  def number_field(field, value)
    numberFields_elements[index_for_number_field(field)].value = value
  end

  def email_field(field, value)
    emailFields_elements[index_for_email_field(field)].value = value
  end

  def password_field(field, value)
    passwordFields_elements[index_for_password_field(field)].value = value
  end

  private

  def index_for_paragraph(name)
    name_elements.find_index { |paragraph| paragraph.text == name }
  end

  def index_for_buttons(name)
    next_elements.find_index { |button| button.text == name }
  end

  def index_for_text_field(field)
    textFields_elements.find_index{ |element| element.name == field }
  end

  def index_for_number_field(field)
    numberFields_elements.find_index{ |element| element.name == field}
  end

  def index_for_email_field(field)
    emailFields_elements.find_index{ |element| element.name == field}
  end

  def index_for_password_field(field)
    passwordFields_elements.find_index{ |element| element.name == field }
  end

end