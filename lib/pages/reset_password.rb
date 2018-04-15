class ResetPassword
  include PageObject
  include DataMagic

  page_url FigNewton.resetpasswordurl

  buttons(:buttons, :class => 'Button')
  text_field(:email, :name => 'email')
  text_field(:password, :name => 'password')
  text_field(:newPassword, :name => 'newpassword')
  text_field(:confirmPassword, :name => 'confirmpassword')

  def click(text)
    buttons_elements[index_for_button(text)].focus
    buttons_elements[index_for_button(text)].click
  end

  def fill_out
    email_element.value = 'jmcevoy+flexisafe7518559@palo-it.com'
    password_element.value = '@Paloit12'
    newPassword_element.value = '@Paloit13'
    confirmPassword_element.value = '@Paloit13'
  end

  def fill_out_alt
    email_element.value = 'jmcevoy+flexisafe7518559@palo-it.com'
    password_element.value = '@Paloit13'
    newPassword_element.value = '@Paloit12'
    confirmPassword_element.value = '@Paloit12'

    buttons_elements[index_for_button('Create password')].focus
    buttons_elements[index_for_button('Create password')].click
  end

  private

  def index_for_button(text)
    buttons_elements.find_index{ |button| button.text == text }
  end

end